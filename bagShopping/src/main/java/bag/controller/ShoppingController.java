package bag.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import bag.model.BagsDTO;
import bag.model.CartDTO;
import bag.model.FileDTO;
import bag.model.FileUploadDownload;
import bag.model.PageData;
import bag.model.ProductsBoardDTO;
import bag.service.BagsMapper;
import bag.service.CartMapper;
import bag.service.FileMapper;
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
	FileMapper fMapper;
	
	@Autowired
	PageData pd;
	
	@Autowired
	FileUploadDownload fud;
	
	BagsDTO bags = null;
	
	List<CartDTO> cartList = null;
	
	List<ProductsBoardDTO> prbDTOs;
	List<BagsDTO> bagDTOs;
	
	int total = 0;
	
	@ModelAttribute("pd")
	Object pd() {
		pd.setPageLimit(16);
		return pd;
	}
	
	@RequestMapping("{shoppingSer}")
	ModelAndView goShopping(HttpSession session,
			@PathVariable String shoppingSer,
			ProductsBoardDTO prbDTO) {
		ModelAndView mav = new ModelAndView("shopping/templates");
		String memberId = (String)session.getAttribute("userId");
		CartDTO cart = new CartDTO();
		cartList = cartMapper.cartList(memberId);
		cart.sumTotal(cartList);
		mav.addObject("cartBags", bagMapper.cartBags(memberId));
		mav.addObject("cartList", cartList);
		mav.addObject("total", cart.getSumTotal());
		mav.addObject("bagsList", bagMapper.allProducts());
		return mav;
	}
	
	@RequestMapping("{shoppingSer}/{brand}/{category}/{type}/{page}")
	ModelAndView goShopping(
			@RequestParam(required = false) String searchCont,
			@PathVariable String shoppingSer,
			@PathVariable int brand,
			@PathVariable int category,
			@PathVariable int type,
			@PathVariable int page) {
		ModelAndView mav = new ModelAndView("shopping/templates");
		ProductsBoardDTO prbDTO = new ProductsBoardDTO();
		BagsDTO bagDTO = new BagsDTO();
		if(shoppingSer.equals("shoppingList")) {
			pd.setPageStart(page);
			bagDTO.setBrandId(brand);
			bagDTO.setCategoriesId(category);
			bagDTO.setTypeId(type);
			prbDTO.setBrandId(brand);
			prbDTO.setCategoriesId(category);
			prbDTO.setTypeId(type);
			if(searchCont == null) {
				bagDTOs = bagMapper.bagsList(bagDTO);
				prbDTOs = prbMapper.productsBoardList(prbDTO);
			}else {
				bagDTOs = new ArrayList<>();
				prbDTOs = prbMapper.searchList(searchCont);
				for(ProductsBoardDTO prb : prbDTOs) {
					for(BagsDTO bag : bagMapper.allProducts()) {
						if(prb.getProductCode() == bag.getProductCode()) {
							bagDTOs.add(bag);
						}
					}
				}
			}
			pd.setTotalPage(prbDTOs.size());
			mav.addObject("bagsList", bagDTOs);
			mav.addObject("productsBoardList", prbDTOs);
		}else if(shoppingSer.equals("shoppingDetail")) {
			prbDTO.setProductsBoardId(page);
			bagDTO.setProductsBoardId(page);
			bags = bagMapper.bags(bagDTO);
			bags.setAmount(1);
			mav.addObject("bags", bags);
			mav.addObject("productsBoard", prbMapper.productsBoard(prbDTO));
		}
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
	Map<String, String> cart(HttpSession session, @RequestBody Map<String, Integer> bagsAmount) {
		Map<String, String> msg = new HashMap<>();
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
		msg.put("msg", "장바구니 추가");
		msg.put("url", "/shopping/shoppingCart");
		msg.put("cartCount", cartMapper.cartCount(memberId)+"");
		return msg;
	}
	
	@PostMapping("shoppingCartChange")
	@ResponseBody
	Object shoppingCartUpd(HttpSession session, @RequestBody Map<String, Integer> cartAmount) {
		String memberId = (String)session.getAttribute("userId");
		CartDTO cart = new CartDTO();
		cart.setProductsCount(cartAmount.get("cartAmount"));
		cart.setCartId(cartAmount.get("cartId"));
		cart.setSumPrice(cartAmount.get("price")*cartAmount.get("cartAmount"));
		cartMapper.changeCart(cart);
		cartList = cartMapper.cartList(memberId);
		cart.sumTotal(cartList);
		LinkedHashMap<String, Integer> calc = new LinkedHashMap<>(); 
		calc.put("sumPrice", cart.getSumPrice());
		calc.put("total", cart.getSumTotal());
		return calc;
	}
	
	@PostMapping("cartDelete")
	@ResponseBody
	Object cartDelete(@RequestBody Map<String, Integer> cart) {
		Map<String, String> msg = new HashMap<>();
		int cartId = cart.get("cartId");
		cartMapper.deleteCart(cartId);
		msg.put("msg", "물건 삭제 성공");
		msg.put("url", "/shopping/shoppingCart");
		return msg;
	}
	
	@PostMapping("shoppingWrite")
	String shoppingWrite(
			ProductsBoardDTO prbDTO) {
		BagsDTO bag = bagMapper.productsBoardBag(prbDTO.getProductCode());
		prbDTO.setBrandId(bag.getBrandId());
		prbDTO.setCategoriesId(bag.getCategoriesId());
		prbDTO.setTypeId(bag.getTypeId());
		prbMapper.writeProduct(prbDTO);
		FileDTO fDTO = new FileDTO();
		fDTO.setProductsBoardId(prbMapper.maxPrbId());
		fDTO.setComplete(true);
		fDTO.setMemberId(prbDTO.getMemberId());
		fMapper.updateFile(fDTO);
		pd.setMsg("상품소개글 작성");
		pd.setUrl("/shopping/shoppingDetail/0/0/0/"+fDTO.getProductsBoardId());
		return "shopping/inc/alert";
	}
	
	@PostMapping("shoppingDelete/{id}")
	@ResponseBody
	Map<String, String> shoppingDelete(
			@PathVariable int id){
		FileDTO fDTO = new FileDTO();
		fDTO.setProductsBoardId(id);
		prbMapper.deleteProduct(id);
		for(FileDTO dto : fMapper.boardDelete(fDTO)) {
			fud.fileDelete(dto.getFiles());
		}
		fMapper.boardFileDelete(fDTO);
		Map<String, String> msg = new HashMap<>();
		msg.put("msg", "상품소개글 삭제");
		msg.put("url", "/shopping/shoppingList/0/0/0/1");
		return msg;
	}
	
	@RequestMapping("{shoppingSer}/{id}")
	ModelAndView shoppingModify(
			@PathVariable String shoppingSer,
			@PathVariable int id,
			ProductsBoardDTO prbDTO) {
		ModelAndView mav = new ModelAndView("shopping/templates");
		prbDTO.setProductsBoardId(id);
		mav.addObject("productsBoard", prbMapper.productsBoard(prbDTO));
		mav.addObject("bagsList", bagMapper.allProducts());
		return mav;
	}
	
	@PostMapping("shoppingModify/{id}")
	String shoppingModify(
			@PathVariable int id,
			ProductsBoardDTO prbDTO){
		BagsDTO bag = bagMapper.productsBoardBag(prbDTO.getProductCode());
		prbDTO.setProductsBoardId(id);
		prbDTO.setBrandId(bag.getBrandId());
		prbDTO.setCategoriesId(bag.getCategoriesId());
		prbDTO.setTypeId(bag.getTypeId());
		prbMapper.updateProduct(prbDTO);
		FileDTO fDTO = new FileDTO();
		fDTO.setProductsBoardId(id);
		fDTO.setComplete(true);
		fDTO.setMemberId(prbDTO.getMemberId());
		fMapper.updateFile(fDTO);
		pd.setMsg("상품소개글 수정");
		pd.setUrl("/shopping/shoppingDetail/0/0/0/"+id);
		return "shopping/inc/alert";
	}
}
