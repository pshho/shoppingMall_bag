package bag.controller;

import java.io.File;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import bag.model.BagsDTO;

import bag.model.FileDTO;
import bag.model.FileUploadDownload;
import bag.model.PageData2;

import bag.service.BagsMapper;
import bag.service.BrandMapper;
import bag.service.CategoriesMapper;
import bag.service.FileMapper;
import bag.service.ImgSaveUtil;
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
	@Resource
	ImgSaveUtil saveutil;

	String path = "C:\\SPRING_JH\\shoppingMall_bag\\bagShopping\\src\\main\\webapp\\upFile";

	// 관리자 메인화면
	@GetMapping("{adminService}")
	String adminService(@PathVariable String adminService) {

		//System.out.println(adminService);
		return "admin/template";
	}

	// 회원 관리
	@GetMapping("memberManage/{page}")
	String memberManage(Model mm, PageData2 pd) {
		String adminUrl = "memberManage";
		pd.calc(memMapper.cntMaxUser());
	
		mm.addAttribute("memberList", memMapper.memberList(pd));
		mm.addAttribute("adminService", adminUrl);
		mm.addAttribute("pd",pd);
		return "admin/template";
	}

	@PostMapping("deleteMember/{page}")
	@ResponseBody
	int deleteMember(HttpServletRequest request, PageData2 pd, Model mm) {

		String memberId = request.getParameter("memberId");

		int deleteMember = memMapper.deleteMember(memberId);
		mm.addAttribute("pd",pd);
		return deleteMember;
	}

	// 상품 관리
	@GetMapping("goodsManage/{page}")
	String goodsManage(Model mm, PageData2 pd) {

		String adminUrl = "goodsManage";
		pd.calc(bagsMapper.cntMaxGoods(pd));
		mm.addAttribute("bags", bagsMapper.allBagsList(pd));
		mm.addAttribute("pd",pd);
		System.out.println(pd);
		mm.addAttribute("brands", brandMapper.brandList());
		mm.addAttribute("categories", cateMapper.categoriesList());

		mm.addAttribute("bags", bagsMapper.allProducts());

		mm.addAttribute("types", typeMapper.typeList());
		mm.addAttribute("adminService", adminUrl);
		return "admin/template";
	}

	// 상품 관리
	@GetMapping("addGoods/{page}")
	String addGoods(Model mm, PageData2 pd) {

		String adminUrl = "addGoods";

		mm.addAttribute("pd",pd);
		mm.addAttribute("brands", brandMapper.brandList());
		mm.addAttribute("categories", cateMapper.categoriesList());
		mm.addAttribute("types", typeMapper.typeList());
		mm.addAttribute("adminService", adminUrl);
		return "admin/template";
	}

	@PostMapping("addGoods/{page}")
	String addGoodsReg(Model mm, BagsDTO bdto, PageData2 pd) throws Exception {
		saveutil.img1Save(bdto);
		saveutil.img2Save(bdto);
		saveutil.img3Save(bdto);
		saveutil.img4Save(bdto);
		bdto.setCategoriesId(cateMapper.getCategoriesId(bdto));
		bdto.setTypeId(typeMapper.getTypeId(bdto));
		bdto.setBrandId(brandMapper.getBrandId(bdto));

		bagsMapper.insertBag(bdto);

		String msg = "상품 등록 성공";
		String goUrl = "/admin/goodsManage/"+pd.page;
		mm.addAttribute("pd",pd);
		mm.addAttribute("goUrl", goUrl);
		mm.addAttribute("msg", msg);
		return "admin/inc/alert";
	}

	@GetMapping("modifyGoods/{productCode}/{page}")
	String modifyGoods(Model mm, @PathVariable int productCode, PageData2 pd) {

		String adminUrl = "modifyGoods";

		BagsDTO modifyBag = bagsMapper.detailBag(productCode);
		modifyBag.setCategoriesName(cateMapper.getCategoriesName(modifyBag));
		modifyBag.setBrandName(brandMapper.getBrandName(modifyBag));
		modifyBag.setTypeName(typeMapper.getTypeName(modifyBag));

		// System.out.println(modifyBag);
		mm.addAttribute("brands", brandMapper.brandList());
		mm.addAttribute("categories", cateMapper.categoriesList());
		mm.addAttribute("types", typeMapper.typeList());
		mm.addAttribute("modifyBag", modifyBag);
		mm.addAttribute("adminService", adminUrl);
		mm.addAttribute("pd",pd);
		return "admin/template";
	}

	@PostMapping("modifyGoods/{productCode}/{page}")
	String modifyGoodsReg(Model mm, @PathVariable int productCode, BagsDTO bdto, PageData2 pd){
		String msg = "상품 수정 실패";
		String goUrl = "/admin/modifyGoods/" + productCode+"/"+pd.page;
		//System.out.println(bdto);
		bdto.setCategoriesId(cateMapper.getCategoriesId(bdto));
		bdto.setTypeId(typeMapper.getTypeId(bdto));
		bdto.setBrandId(brandMapper.getBrandId(bdto));
		bdto.setDefaultProductCode(productCode);
		//System.out.println();
		saveutil.img1Save(bdto);
		saveutil.img2Save(bdto);
		saveutil.img3Save(bdto);
		saveutil.img4Save(bdto);

		int cnt = bagsMapper.modifyBag(bdto);
		if (cnt > 0) {
			msg = "상품 수정 성공";
			goUrl = "/admin/goodsManage/"+pd.page;
		}
		mm.addAttribute("goUrl", goUrl);
		mm.addAttribute("msg", msg);
		mm.addAttribute("pd",pd);
		return "admin/inc/alert";
	}
	
	@PostMapping("deleteGoods/{page}")
	@ResponseBody
	int deleteGoods(HttpServletRequest request, Model mm, PageData2 pd) {

		String Code = request.getParameter("productCode");
		int productCode = Integer.parseInt(Code);
	
		//삭제될 상품 가져와서 남아있는 이미지 삭제
		BagsDTO bDto = bagsMapper.detailBag(productCode);
		if(bDto.getBagImg1() != null) {
			new File(path + "\\" + bDto.getBagImg1()).delete();
		}
		if(bDto.getBagImg2() != null) {
			new File(path + "\\" + bDto.getBagImg2()).delete();
		}
		if(bDto.getBagImg3() != null) {
			new File(path + "\\" + bDto.getBagImg3()).delete();
		}
		if(bDto.getBagImg4() != null) {
			new File(path + "\\" + bDto.getBagImg4()).delete();
		}
		int deleteGoods = bagsMapper.deleteGoods(productCode);
		mm.addAttribute("pd",pd);
		return deleteGoods;
	}

	@PostMapping("deleteImg1/{page}")
	@ResponseBody
	int deleteImg1(HttpServletRequest request, Model mm, PageData2 pd) {
		String Code = request.getParameter("productCode");
		int productCode = Integer.parseInt(Code);
		bagsMapper.deleteImg1(productCode);
		String imgName = request.getParameter("imgName");
		new File(path + "\\" + imgName).delete();
		mm.addAttribute("productCode", productCode);
		mm.addAttribute("pd",pd);
		return bagsMapper.getImg1(productCode);
	}

	@PostMapping("deleteImg2/{page}")
	@ResponseBody
	int deleteImg2(HttpServletRequest request, Model mm, PageData2 pd) {
		String Code = request.getParameter("productCode");
		int productCode = Integer.parseInt(Code);
		bagsMapper.deleteImg2(productCode);
		String imgName = request.getParameter("imgName");
		new File(path + "\\" + imgName).delete();
		mm.addAttribute("productCode", productCode);
		mm.addAttribute("pd",pd);
		return bagsMapper.getImg2(productCode);
	}

	@PostMapping("deleteImg3/{page}")
	@ResponseBody
	int deleteImg3(HttpServletRequest request, Model mm, PageData2 pd) {
		String Code = request.getParameter("productCode");
		int productCode = Integer.parseInt(Code);
		bagsMapper.deleteImg3(productCode);
		String imgName = request.getParameter("imgName");
		new File(path + "\\" + imgName).delete();
		mm.addAttribute("productCode", productCode);
		mm.addAttribute("pd",pd);
		return bagsMapper.getImg3(productCode);
	}

	@PostMapping("deleteImg4/{page}")
	@ResponseBody
	int deleteImg4(HttpServletRequest request, Model mm, PageData2 pd) {
		String Code = request.getParameter("productCode");
		int productCode = Integer.parseInt(Code);
		bagsMapper.deleteImg4(productCode);
		String imgName = request.getParameter("imgName");
		new File(path + "\\" + imgName).delete();
		mm.addAttribute("productCode", productCode);
		//System.out.println(bagsMapper.getImg4(productCode));
		mm.addAttribute("pd",pd);
		return bagsMapper.getImg4(productCode);
	}

	// 판매 내역
	@GetMapping("salesHistory/{page}")
	String salesHistory(Model mm, PageData2 pd) {

		String adminUrl = "salesHistory";

		mm.addAttribute("adminService", adminUrl);
		mm.addAttribute("pd",pd);
		return "admin/template";
	}

	// 다중 이미지 처리 - 나중에 재도전... ( 파일 중복시 처리, 이전 img 누락시 등록불가 이슈 )
	/*
	 * void fileProcess(MultipartHttpServletRequest mr, BagsDTO bdto) throws
	 * Exception { List<String> fileList = new ArrayList<String>(); Iterator<String>
	 * fileNames = mr.getFileNames();
	 * 
	 * while (fileNames.hasNext()) { String fileName = fileNames.next();
	 * MultipartFile mFile = mr.getFile(fileName); String originalFileName =
	 * mFile.getOriginalFilename(); fileList.add(originalFileName); File file = new
	 * File(path + "\\" + fileName); if (mFile.getSize() != 0) { if (!file.exists())
	 * { if (file.getParentFile().mkdir()) { file.createNewFile(); } }
	 * mFile.transferTo(new File(path + "\\" + originalFileName)); } }
	 * 
	 * if (fileList.get(0) != null &&
	 * !bdto.getImg1().getOriginalFilename().equals("")) {
	 * bdto.setBagImg1(fileList.get(0).toString()); } if (fileList.get(1) != null &&
	 * !bdto.getImg2().getOriginalFilename().equals("")) {
	 * bdto.setBagImg2(fileList.get(1).toString()); } if (fileList.get(2) != null &&
	 * !bdto.getImg3().getOriginalFilename().equals("")) {
	 * bdto.setBagImg3(fileList.get(2).toString()); } if (fileList.get(3) != null &&
	 * !bdto.getImg4().getOriginalFilename().equals("")) {
	 * bdto.setBagImg4(fileList.get(3).toString()); } }
	 */

}
