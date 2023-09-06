package bag.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import bag.service.BagsMapper;
import bag.service.BrandMapper;
import bag.service.CategoriesMapper;
import bag.service.MemberMapper;
import bag.service.TypeMapper;
import jakarta.annotation.Resource;
import jakarta.servlet.http.HttpServletRequest;

@Controller
@RequestMapping("/admin")
public class AdminController {
	
	@Resource
	MemberMapper memMapper;
	@Resource
	BagsMapper bagsMapper;
	@Resource
	BrandMapper brandMapper;
	@Resource
	CategoriesMapper cateMapper;
	@Resource
	TypeMapper typeMapper;

	// 관리자 메인화면
	@GetMapping("{adminService}")
	String adminService(@PathVariable String adminService) {
		
		System.out.println(adminService);
		return "admin/template";
	}
	
	// 회원 관리
	@GetMapping("memberManage")
	String memberManage(Model mm) {
	
		String adminUrl = "memberManage";
		
		mm.addAttribute("memberList", memMapper.memberList());
		mm.addAttribute("adminService", adminUrl);
		return "admin/template";
	}
	
	@PostMapping("deleteMember")
	@ResponseBody
	int deleteMember(HttpServletRequest request) {
		
		String memberId = request.getParameter("memberId");
		
		int deleteMember = memMapper.deleteMember(memberId);
	
		return deleteMember;
	}
	
	// 상품 관리
	@GetMapping("goodsManage")
	String goodsManage(Model mm) {
		
		String adminUrl = "goodsManage";
		
		mm.addAttribute("brands", brandMapper.brandList());
		mm.addAttribute("categories", cateMapper.categoriesList());
		mm.addAttribute("bags", bagsMapper.allBagsList());
		mm.addAttribute("types",typeMapper.typeList());
		mm.addAttribute("adminService", adminUrl);
		return "admin/template";
	}
	
	// 상품 관리
	@GetMapping("addGoods")
	String addGoods(Model mm) {
		
		String adminUrl = "addGoods";
		
		mm.addAttribute("brands", brandMapper.brandList());
		mm.addAttribute("categories", cateMapper.categoriesList());
		mm.addAttribute("types",typeMapper.typeList());
		mm.addAttribute("adminService", adminUrl);
		return "admin/template";
	}
	
	// 판매 내역
	@GetMapping("salesHistory")
	String salesHistory(Model mm) {
		
		String adminUrl = "salesHistory";
		
		mm.addAttribute("adminService", adminUrl);
		return "admin/template";
	}
	
}
