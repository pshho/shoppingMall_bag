package bag.controller;

import java.io.File;
import java.io.FileOutputStream;
import java.util.ArrayList;
import java.util.Enumeration;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import bag.model.BagsDTO;
import bag.model.FileDTO;
import bag.model.FileUploadDownload;
import bag.service.BagsMapper;
import bag.service.BrandMapper;
import bag.service.CategoriesMapper;
import bag.service.FileMapper;
import bag.service.MemberMapper;
import bag.service.TypeMapper;
import jakarta.annotation.Resource;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

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
	@Resource
	FileMapper fileMapper;

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
		mm.addAttribute("types", typeMapper.typeList());
		mm.addAttribute("adminService", adminUrl);
		return "admin/template";
	}

	// 상품 관리
	@GetMapping("addGoods")
	String addGoods(Model mm) {

		String adminUrl = "addGoods";

		mm.addAttribute("brands", brandMapper.brandList());
		mm.addAttribute("categories", cateMapper.categoriesList());
		mm.addAttribute("types", typeMapper.typeList());
		mm.addAttribute("adminService", adminUrl);
		return "admin/template";
	}

	@PostMapping("addGoods")
	String addGoodsReg(Model mm, BagsDTO bdto, MultipartHttpServletRequest mr, HttpServletResponse response)
			throws Exception {
		mr.setCharacterEncoding("utf-8");
		
		if(mr != null) {
			fileProcess(mr, bdto);
		}
		
		//System.out.println(bdto);
		bdto.setCategoriesId(cateMapper.getCategoriesId(bdto));
		bdto.setTypeId(typeMapper.getTypeId(bdto));
		bdto.setBrandId(brandMapper.getBrandId(bdto));
		
		bagsMapper.insertBag(bdto);
		
		String msg = "상품 등록 성공";
		String goUrl = "goodsManage";
		
		mm.addAttribute("goUrl", goUrl);
		mm.addAttribute("msg", msg);
		return "admin/inc/alert";
	}

	@GetMapping("modifyGoods/{productCode}")
	String modifyGoods(Model mm, @PathVariable int productCode) {

		String adminUrl = "modifyGoods";
		
		BagsDTO modifyBag = bagsMapper.detailBag(productCode);
		modifyBag.setCategoriesName(cateMapper.getCategoriesName(modifyBag));
		modifyBag.setBrandName(brandMapper.getBrandName(modifyBag));
		modifyBag.setTypeName(typeMapper.getTypeName(modifyBag));

		//System.out.println(modifyBag);
		mm.addAttribute("brands", brandMapper.brandList());
		mm.addAttribute("categories", cateMapper.categoriesList());
		mm.addAttribute("types", typeMapper.typeList());
		mm.addAttribute("modifyBag", modifyBag);
		mm.addAttribute("adminService", adminUrl);
		return "admin/template";
	}
	
	@PostMapping("modifyGoods/{productCode}")
	String modifyGoodsReg(Model mm, @PathVariable int productCode, BagsDTO bdto) {
		String msg = "상품 수정 성공";
		String goUrl = "goodsManage";
		System.out.println(bdto.getImg1());
		System.out.println(bdto.getBagImg1());
		System.out.println(bdto.getBagImg2());
		System.out.println(bdto.getBagImg3());
		System.out.println(bdto.getBagImg4());
		return "admin/inc/alert";
	}
	
	@PostMapping("deleteImg1")
	@ResponseBody
	int deleteImg1(HttpServletRequest request, Model mm) {
		String Code = request.getParameter("productCode");
		int productCode = Integer.parseInt(Code);
		bagsMapper.deleteImg1(productCode);
		mm.addAttribute("productCode",productCode);
		
		return bagsMapper.getImg1(productCode);
	}
	@PostMapping("deleteImg2")
	@ResponseBody
	int deleteImg2(HttpServletRequest request, Model mm) {
		String Code = request.getParameter("productCode");
		int productCode = Integer.parseInt(Code);
		bagsMapper.deleteImg2(productCode);
		mm.addAttribute("productCode",productCode);
		
		return bagsMapper.getImg2(productCode);
	}
	@PostMapping("deleteImg3")
	@ResponseBody
	int deleteImg3(HttpServletRequest request, Model mm) {
		String Code = request.getParameter("productCode");
		int productCode = Integer.parseInt(Code);
		bagsMapper.deleteImg3(productCode);
		mm.addAttribute("productCode",productCode);
		
		return bagsMapper.getImg3(productCode);
	}
	@PostMapping("deleteImg4")
	@ResponseBody
	int deleteImg4(HttpServletRequest request, Model mm) {
		String Code = request.getParameter("productCode");
		int productCode = Integer.parseInt(Code);
		bagsMapper.deleteImg4(productCode);
		mm.addAttribute("productCode",productCode);
		
		return bagsMapper.getImg4(productCode);
	}
	
	// 판매 내역
	@GetMapping("salesHistory")
	String salesHistory(Model mm) {

		String adminUrl = "salesHistory";

		mm.addAttribute("adminService", adminUrl);
		return "admin/template";
	}

	// 다중 이미지 처리
	void fileProcess(MultipartHttpServletRequest multipartRequest, BagsDTO bdto) throws Exception {
		String path = "C:\\spring_project\\shoppingMall_bag\\bagShopping\\src\\main\\webapp\\upFile";
		List<String> fileList = new ArrayList<String>();
		Iterator<String> fileNames = multipartRequest.getFileNames();

		while (fileNames.hasNext()) {
			String fileName = fileNames.next();
			MultipartFile mFile = multipartRequest.getFile(fileName);
			String originalFileName = mFile.getOriginalFilename();
			fileList.add(originalFileName);
			File file = new File(path + "\\" + fileName);
			if (mFile.getSize() != 0) {
				if (!file.exists()) {
					if (file.getParentFile().mkdir()) {
						file.createNewFile();
					}
				}
				mFile.transferTo(new File(path + "\\" + originalFileName));
			}
		}
		if(fileList.get(0) != null) {
			bdto.setBagImg1(fileList.get(0).toString());
		}
		if(fileList.get(1) != null) {
			bdto.setBagImg2(fileList.get(1).toString());
		}
		if(fileList.get(2) != null) {
			bdto.setBagImg3(fileList.get(2).toString());
		}
		if(fileList.get(3) != null) {
			bdto.setBagImg4(fileList.get(3).toString());
		}
	}

}
