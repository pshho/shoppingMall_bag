package bag.controller;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import bag.model.CartDTO;
import bag.service.AddressMapper;
import bag.service.BagsMapper;
import bag.service.CartMapper;
import bag.service.MemberMapper;
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
	
	@RequestMapping("{ordersSer}")
	ModelAndView goOrders(HttpSession session,
			@PathVariable String ordersSer) {
		ModelAndView mav = new ModelAndView("orders/templates");
		CartDTO cart = new CartDTO();
		if(session != null) {
			String memberId = (String)session.getAttribute("userId");
			List<CartDTO> cartList = cartMapper.cartList(memberId);
			cart.sumTotal(cartList);
			mav.addObject("cartList", cartList);
			mav.addObject("cartBags", bagMapper.cartBags(memberId));
			mav.addObject("total", cart.getSumTotal());
			mav.addObject("user", memMapper.getUser(memberId));
			mav.addObject("addrList", addrMapper.addrList(memberId));
			mav.addObject("address", addrMapper.basicAddress(memberId, 1));
		}
		return mav;
	}
	
	@PostMapping("addrChange")
	@ResponseBody
	Object addrChange(@RequestBody(required = false) Map<String, Integer> addrChange) {
		return addrMapper.selAddr(addrChange.get("addressId"));
	}
}
