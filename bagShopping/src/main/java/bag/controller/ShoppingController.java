package bag.controller;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import bag.model.BagsDTO;
import bag.model.CartDTO;
import bag.model.PageData;
import bag.model.ProductsBoardDTO;
import bag.service.BagsMapper;
import bag.service.CartMapper;
import bag.service.ProductsBoardMapper;
import jakarta.servlet.http.HttpSession;

@Controller
@RequestMapping("shopping")
public class ShoppingController {
	@Autowired
	BagsMapper bagMapper;
	
	@Autowired
	ProductsBoardMapper prbMapper;
	
	@Autowired
	CartMapper cartMapper;
	
	@Autowired
	PageData pd;
	
	BagsDTO bags = null;
	
	@RequestMapping("{shoppingSer}")
	ModelAndView goShopping(HttpSession session,
			@PathVariable String shoppingSer) {
		ModelAndView mav = new ModelAndView("shopping/templates");
		String memberId = (String)session.getAttribute("userId");
		mav.addObject("cartBags", bagMapper.cartBags(memberId));
		return mav;
	}
	
	@RequestMapping("{shoppingSer}/{brand}/{category}/{categoriesCode}/{page}")
	ModelAndView goShopping(@PathVariable String shoppingSer,
			@PathVariable int brand,
			@PathVariable int category,
			@PathVariable int categoriesCode,
			@PathVariable int page) {
		ModelAndView mav = new ModelAndView("shopping/templates");
		ProductsBoardDTO prbDTO = new ProductsBoardDTO();
		BagsDTO bagDTO = new BagsDTO();
		pd.setPageLimit(12);
		if(shoppingSer.equals("shoppingList")) {
			pd.setPageStart(page);
			prbDTO.setBrandId(brand);
			prbDTO.setCategoriesId(category);
			prbDTO.setCategoriesCode(categoriesCode);
			bagDTO.setBrandId(brand);
			bagDTO.setCategoriesId(category);
			mav.addObject("bagsList", bagMapper.bagsList(bagDTO));
			mav.addObject("productsBoardList", prbMapper.productsBoardList(prbDTO));
		}else if(shoppingSer.equals("shoppingDetail")) {
			prbDTO.setProductsBoardId(page);
			bagDTO.setProductsBoardId(page);
			bags = bagMapper.bags(bagDTO);
			bags.setAmount(1);
			mav.addObject("bags", bags);
			mav.addObject("productsBoard", prbMapper.productsBoard(prbDTO));
		}
		pd.setTotalPage(prbMapper.productsBoardList(prbDTO).size());
		mav.addObject("pd", pd);
		return mav;
	}
	
	@PostMapping("shoppingDetail")
	@ResponseBody
	Object calcAmount(@RequestBody Map<String, Integer> bagsAmount) {
		bags.setAmount(bagsAmount.get("bagsAmount"));
		return bags;
	}
	
	@PostMapping("shoppingCart")
	@ResponseBody
	Object cart(HttpSession session, @RequestBody Map<String, Integer> bagsAmount) {
		String memberId = (String)session.getAttribute("userId");
		int length = cartMapper.cartList(memberId).size();
		CartDTO cart = new CartDTO();
		cart.setMemberId(memberId);
		cart.setProductsCount(bagsAmount.get("bagsAmount"));
		cart.setProductCode(bags.getProductCode());
		cart.setSumPrice(bagsAmount.get("bagsAmount")*bags.getBagPrice());
		
		if(length > 0) {
			int res = cartMapper.updCart(cart);
			if(res == 0) {
				cartMapper.addCart(cart);
			}
		}else {
			cartMapper.addCart(cart);
		}
		
		return cart;
	}
}
