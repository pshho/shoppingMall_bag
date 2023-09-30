package bag.controller;

import java.util.ArrayList;
import java.util.List;
import java.util.TreeSet;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import bag.model.BagsDTO;
import bag.model.ProductsBoardDTO;
import bag.model.SellsDistinct;
import bag.service.BagsMapper;
import bag.service.ProductsBoardMapper;

@Controller
@RequestMapping("/")
public class HomeController {
	@Autowired
	ProductsBoardMapper prbMapper;
	
	@Autowired
	BagsMapper bagMapper;
	
	@GetMapping
	String goHome(Model md) {
		List<ProductsBoardDTO> prbListNew = prbMapper.newPrb(2);
		TreeSet<ProductsBoardDTO> prbTree = new TreeSet<>(new SellsDistinct());
		List<BagsDTO> bagList = new ArrayList<>();
		List<BagsDTO> bagListNew = new ArrayList<>();
		
		for(ProductsBoardDTO prb : prbListNew) {
			prbTree.add(prb);
			
			for(BagsDTO bag : bagMapper.allProducts()) {
				if(prb.getProductCode() == bag.getProductCode()) {
					bagListNew.add(bag);
					break;
				}
			}
		}
		
		for(ProductsBoardDTO prb : prbTree) {
			for(BagsDTO bag : bagMapper.allProducts()) {
				if(prb.getProductCode() == bag.getProductCode()) {
					bagList.add(bag);
					break;
				}
			}
		}
		
		md.addAttribute("prbListNew", prbListNew);
		md.addAttribute("prbList", prbTree);
		md.addAttribute("bagList", bagList);
		md.addAttribute("bagListNew", bagListNew);
		return "index";
	}
}
