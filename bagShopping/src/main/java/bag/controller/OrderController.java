package bag.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
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
   String total;
   String productUid;
   String key;
   String productCount;
   ArrayList<BagsDTO> updStock;
   
   @RequestMapping("{ordersSer}")
   ModelAndView goOrders(HttpSession session,
         @PathVariable String ordersSer) {
      ModelAndView mav = new ModelAndView("orders/templates");
      CartDTO cart = new CartDTO();
      String memberId = (String)session.getAttribute("userId");
      if(session != null) {
         cartList = cartMapper.cartList(memberId);
         cart.sumTotal(cartList);
         mav.addObject("cartList", cartList);
         mav.addObject("cartBags", bagMapper.cartBags(memberId));
         total = cart.getSumTotal()+"";
         mav.addObject("total", total);
         mav.addObject("user", memMapper.getUser(memberId));
         List<AddressDTO> addrList = addrMapper.addrList(memberId);
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
      }
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
      String prdCode = "";
      String prdCount = "";
      if(cartList != null) {
         updStock = new ArrayList<>();
         for(int i=0; i<cartList.size(); i++) {
            BagsDTO bag = new BagsDTO();
            if(i==cartList.size()-1) {
               prdCode += cartList.get(i).getProductCode();
               prdCount += cartList.get(i).getProductsCount();
            }else {
               prdCode += cartList.get(i).getProductCode()+",";
               prdCount += cartList.get(i).getProductsCount()+",";
            }
            bag.setProductCode(cartList.get(i).getProductCode());
            bag.setSellsAmount(cartList.get(i).getProductsCount());
            updStock.add(bag);
         }
      }
      this.ordDTO = ordDTO;
      this.ordDTO.setPayType(ordDTO.getPayType());
      this.ordDTO.setProdCode(prdCode);
      this.ordDTO.setProdCount(prdCount);
      return this.ordDTO;
   }
   
   @PostMapping("preparePay")
   @ResponseBody
   Object preparePay() {
      Map<Object, LinkedHashMap<Object, Object>> response = 
            (Map<Object, LinkedHashMap<Object, Object>>) restPay.accessToken();
      key = (String)response.get("response").get("access_token");
      restPay.preparePay(ordDTO, key);
      return "사전 검증 성공";
   }
   
   @PostMapping("orderConfirm")
   @ResponseBody
   Object orderConfirm(@RequestBody OrderDTO ordDTO) {
      Map<Object, LinkedHashMap<Object, Object>> response = 
            (Map<Object, LinkedHashMap<Object, Object>>) restPay.afterPay(ordDTO, key);
      if(this.ordDTO.getOrdersTotalPrice() == (int)response.get("response").get("amount")) {
         this.ordDTO.setImp_uid(ordDTO.getImp_uid());
         for(BagsDTO bag : updStock) {
            bagMapper.updSells(bag);
            bagMapper.updStock(bag);
         }
         cartMapper.allDelete(ordDTO.getMemberId());
         ordMapper.orderInsert(this.ordDTO);
         return ResponseEntity.ok("결제 완료");
      }else {
         return ResponseEntity.status(HttpStatus.BAD_REQUEST).body("결제 실패");
      }
   }
}