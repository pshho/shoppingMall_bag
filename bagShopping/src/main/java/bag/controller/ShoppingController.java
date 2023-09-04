package bag.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import bag.model.BagsDTO;
import bag.model.PageData;
import bag.model.ProductsBoardDTO;
import bag.service.BagsMapper;
import bag.service.ProductsBoardMapper;

@Controller
@RequestMapping("shopping")
public class ShoppingController {
	@Autowired
	BagsMapper bagMapper;
	
	@Autowired
	ProductsBoardMapper prbMapper;
	
	@Autowired
	PageData pd;
	
	@RequestMapping("{shoppingSer}")
	String goShopping(@PathVariable String shoppingSer) {
		return "shopping/templates";
	}
	
	@RequestMapping("{shoppingSer}/{brand}/{category}/{categoriesCode}/{page}")
	ModelAndView goShopping(@PathVariable String shoppingSer,
			@PathVariable int brand,
			@PathVariable int category,
			@PathVariable int categoriesCode,
			@PathVariable int page) {
		ModelAndView mav = new ModelAndView("shopping/templates");
		pd.setPageStart(page);
		pd.setPageLimit(12);
		ProductsBoardDTO prbDTO = new ProductsBoardDTO();
		BagsDTO bagDTO = new BagsDTO();
		prbDTO.setBrandId(brand);
		prbDTO.setCategoriesId(category);
		prbDTO.setCategoriesCode(categoriesCode);
		bagDTO.setBrandId(brand);
		bagDTO.setCategoriesId(category);
		mav.addObject("bagsList", bagMapper.bagsList(bagDTO));
		mav.addObject("productsBoardList", prbMapper.productsBoardList(prbDTO));
		pd.setTotalPage(prbMapper.productsBoardList(prbDTO).size());
		mav.addObject("pd", pd);
		return mav;
	}
}
