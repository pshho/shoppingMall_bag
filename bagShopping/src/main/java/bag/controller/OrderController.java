package bag.controller;

import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import bag.model.AddressDTO;
import bag.model.BagsDTO;
import bag.model.CartDTO;
import bag.model.OrderDTO;
import bag.service.AddressMapper;
import bag.service.BagsMapper;
import bag.service.CartMapper;
import bag.service.MemberMapper;
import bag.service.OrdersMapper;
import bag.service.RestPayService;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;

@Controller
@RequestMapping("orders")
public class OrderController {
	@Autowired
	MemberMapper memMapper;
	
	@Autowired
	AddressMapper addrMapper;
	
	@Autowired
	CartMapper cartMapper;
	
	@Autowired
	BagsMapper bagMapper;
	
	@Autowired
	OrdersMapper ordMapper;
	
	@Autowired
	RestPayService restPay;
	
	List<CartDTO> cartList;
	OrderDTO ordDTO;
	int total, delivery;
	String productUid;
	String productCount;
	List<BagsDTO> updStock;
	
	@RequestMapping("{ordersSer}")
	ModelAndView goOrders(HttpSession session,
			@PathVariable String ordersSer) {
		ModelAndView mav = new ModelAndView("orders/templates");
		CartDTO cart = new CartDTO();
		String memberId = (String)session.getAttribute("userId");
		String nonMem = (String)session.getAttribute("nonMemberId");
		if(memberId != null) {
			cartList = cartMapper.cartList(memberId);
			mav.addObject("cartBags", bagMapper.cartBags(memberId));
			List<AddressDTO> addrList = addrMapper.addrList(memberId);
			mav.addObject("user", memMapper.getUser(memberId));
			mav.addObject("addrList", addrList);
			mav.addObject("address", addrMapper.basicAddress(memberId, 1));
			List<String> addrMsg = new ArrayList<>();
			for(AddressDTO addr : addrList) {
				if(addr.getAddressMsg() != null) {
					if(addrMsg.size() == 0) {
						addrMsg.add(addr.getAddressMsg());
					}else if(!addrMsg.contains(addr.getAddressMsg())){
						addrMsg.add(addr.getAddressMsg());
					}
				}
			}
			mav.addObject("addrMsg", addrMsg);
		}else {
			cartList = cartMapper.cartList(nonMem);
			mav.addObject("cartBags", bagMapper.cartBags(nonMem));
		}
		cart.sumTotal(cartList);
		
		if(cart.getSumTotal() < 50000) {
			cart.setDeliveryFee(3000);
			cart.setSumTotal(cart.getSumTotal()+cart.getDeliveryFee());
			delivery = cart.getDeliveryFee();
		}
		mav.addObject("cartList", cartList);
		total = cart.getSumTotal();
		mav.addObject("total", total);
		mav.addObject("delivery", cart.getDeliveryFee());
		return mav;
	}
	
	@PostMapping("addrChange")
	@ResponseBody
	Object addrChange(@RequestBody(required = false) Map<String, Integer> addrChange) {
		return addrMapper.selAddr(addrChange.get("addressId"));
	}
	
	@PostMapping("addrChg")
	@ResponseBody
	Object addrChg(@RequestBody AddressDTO addrDTO) {
		if(addrDTO.getBasicAddr() == 1) {
			addrMapper.chgBasicAddr(addrDTO);
		}
		addrMapper.insertAddress(addrDTO);
		return "주소 등록 및 변경";
	}
	
	@PostMapping("requestPay")
	@ResponseBody
	Object requestPay(@RequestBody OrderDTO ordDTO) {
		Date today = new Date();
		LocalDateTime date = LocalDateTime.now();
		DateTimeFormatter formatMonth = DateTimeFormatter.ofPattern("MM");
		DateTimeFormatter formatDay = DateTimeFormatter.ofPattern("dd");
		DateTimeFormatter formatHours = DateTimeFormatter.ofPattern("HH");
		DateTimeFormatter formatMinutes = DateTimeFormatter.ofPattern("mm");
		String merchanUid = "IWILLBAG"+date.getYear()+date.format(formatMonth)+date.format(formatDay)+
				date.format(formatHours)+date.format(formatMinutes)+date.getNano();
		String prdCode = "";
		String prdCount = "";
		Map<String, String> msg = new HashMap<>();
		if(cartList != null) {
			updStock = new ArrayList<>();
			for(int i=0; i<cartList.size(); i++) {
				BagsDTO bag = new BagsDTO();
				bag.setProductCode(cartList.get(i).getProductCode());
				bag.setSellsAmount(cartList.get(i).getProductsCount());
				updStock.add(bag);
				if(i==cartList.size()-1) {
					if(bagMapper.productsBoardBag(cartList.get(i).getProductCode()).getBagStock() 
							< cartList.get(i).getProductsCount()) {
						msg.put("msg", "재고 부족");
						break;
					}else {
						prdCode += cartList.get(i).getProductCode();
						prdCount += cartList.get(i).getProductsCount();
					}
				}else {
					if(bagMapper.productsBoardBag(cartList.get(i).getProductCode()).getBagStock() 
							< cartList.get(i).getProductsCount()) {
						msg.put("msg", "재고 부족");
						break;
					}else {
						prdCode += cartList.get(i).getProductCode()+",";
						prdCount += cartList.get(i).getProductsCount()+",";
					}
				}
			}
		}
		this.ordDTO = ordDTO;
		this.ordDTO.setDeliveryFee(delivery);
		this.ordDTO.setMerchant_uid(merchanUid);
		this.ordDTO.setOrdersRegDate(today);
		this.ordDTO.setPayType(ordDTO.getPayType());
		this.ordDTO.setProdCode(prdCode);
		this.ordDTO.setProdCount(prdCount);
		
		if(!msg.containsKey("msg")) {
			return this.ordDTO;
		}else {
			return msg;
		}
	}
	
	@PostMapping("preparePay")
	@ResponseBody
	Object preparePay() {
		restPay.preparePay(ordDTO, total);
		return "사전 검증 성공";
	}
	
	@PostMapping("orderConfirm")
	@ResponseBody
	Object orderConfirm(
			HttpSession session,
			@RequestBody OrderDTO ordDTO) {
		String nonMem = (String)session.getAttribute("nonMemberId");
		Map<Object, LinkedHashMap<Object, Object>> response = 
				(Map<Object, LinkedHashMap<Object, Object>>) restPay.afterPay(ordDTO);
		if(this.ordDTO.getOrdersTotalPrice() == (int)response.get("response").get("amount")) {
			this.ordDTO.setImp_uid(ordDTO.getImp_uid());
			for(BagsDTO bag : updStock) {
				bagMapper.updSells(bag);
				bagMapper.updStock(bag);
			}
			cartMapper.allDelete(ordDTO.getMemberId());
			this.ordDTO.setOrderStatus("결제 완료");
			ordMapper.orderInsert(this.ordDTO);
			if(nonMem != null) {
				session.removeAttribute("nonMemberId");
				session.removeAttribute("nonMemberName");
				session.removeAttribute("nonMemberPhone");
			}
			
			return ResponseEntity.ok("결제 완료");
		}else {
			return ResponseEntity.status(HttpStatus.BAD_REQUEST).body("결제 실패");
		}
	}
	
	@GetMapping("orderCancel/{uid}")
	String orderCancel(Model mm, @PathVariable String uid) {
		
		mm.addAttribute("ordersSer","orderCancel");
		mm.addAttribute("uid",uid);
		System.out.println(uid);
		return "orders/templates";
	}

	@PostMapping("orderCancel")
	ModelAndView orderCancelReg(
			HttpServletRequest request,
			@RequestParam(required = false) String url,
			OrderDTO ordDTO) {
		ModelAndView mav = new ModelAndView("redirect:"+request.getHeader("referer"));
		OrderDTO oDTOs = ordMapper.cancelOrder(ordDTO.getMerchant_uid());
		if(oDTOs != null) {
			oDTOs.setCancelReason(ordDTO.getCancelReason());
			Map<String, Object> response = (Map<String, Object>) restPay.cancelPay(oDTOs);
			if((int)response.get("code") == 0) {
				ordDTO.setOrderStatus("결제 취소");
				ordMapper.cancelOrderUpdate(ordDTO);
				mav.addObject("msg", "주문취소 성공");
				mav.addObject("url", url);
			}else {
				mav.addObject("msg", response.get("message"));
			}
		}else {
			mav.addObject("msg", "주문취소 실패");
		}
		return mav;
	}

}