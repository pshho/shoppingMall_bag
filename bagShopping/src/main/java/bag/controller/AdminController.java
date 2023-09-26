package bag.controller;

import java.io.File;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import bag.model.BagsDTO;
import bag.model.OrderDTO;
import bag.model.PageData2;
import bag.model.ProductsBoardDTO;
import bag.model.TotalOrderDTO;
import bag.service.BagsMapper;
import bag.service.BrandMapper;
import bag.service.CategoriesMapper;
import bag.service.FileMapper;
import bag.service.ImgSaveUtil;
import bag.service.MemberMapper;
import bag.service.OrdersMapper;
import bag.service.ProductsBoardMapper;
import bag.service.RestPayService;
import bag.service.TypeMapper;
import jakarta.annotation.Resource;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;

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
	OrdersMapper ordMapper;
	@Resource
	ImgSaveUtil saveutil;
	@Resource
	ProductsBoardMapper prdMapper;

	@Autowired
	RestPayService restPay;

	String path = "C:\\SPRING_JH\\shoppingMall_bag\\bagShopping\\src\\main\\webapp\\upFile";

	// 관리자 메인화면
	@GetMapping("{adminService}")
	String adminService(@PathVariable String adminService, PageData2 pd, Model mm) {

		// System.out.println(adminService);
		mm.addAttribute("pd", pd);
		mm.addAttribute("pay", ordMapper.payCnt());
		mm.addAttribute("ready",ordMapper.shipReadyCnt());
		mm.addAttribute("ing",ordMapper.shipIngCnt());
		return "admin/template";
	}

	// 회원 관리
	@GetMapping("memberManage/{page}")
	String memberManage(Model mm, PageData2 pd) {
		String adminUrl = "memberManage";
		pd.calc(memMapper.cntMaxUser(pd));

		mm.addAttribute("memberList", memMapper.memberList(pd));
		mm.addAttribute("adminService", adminUrl);
		mm.addAttribute("pd", pd);
		return "admin/template";
	}

	@PostMapping("blackMember/{page}")
	@ResponseBody
	int blackMember(HttpServletRequest request, PageData2 pd, Model mm) {

		String memberId = request.getParameter("memberId");

		int statusCheck = memMapper.blackMemberUpdate(memberId);
		int addBlack = memMapper.blackMember(memberId);
		mm.addAttribute("pd", pd);
		return statusCheck + addBlack;
	}

	@PostMapping("clearMember/{page}")
	@ResponseBody
	int clearMember(HttpServletRequest request, PageData2 pd, Model mm) {

		String memberId = request.getParameter("memberId");

		int statusCheck = memMapper.clearMemberUpdate(memberId);
		int clearBlack = memMapper.clearMember(memberId);

		mm.addAttribute("pd", pd);
		return statusCheck + clearBlack;
	}

	@GetMapping("quitMemberManage/{page}")
	String quitMemberManage(Model mm, PageData2 pd) {

		pd.calc(memMapper.quitMemberCnt(pd));
		mm.addAttribute("pd", pd);
		mm.addAttribute("quitMember", memMapper.quitMemberList(pd));
		mm.addAttribute("adminService", "quitMemberManage");
		return "admin/template";
	}

	// 상품 관리
	@GetMapping("goodsManage/{page}")
	String goodsManage(Model mm, PageData2 pd) {

		String adminUrl = "goodsManage";
		pd.calc(bagsMapper.cntMaxGoods(pd));
		mm.addAttribute("bags", bagsMapper.allBagsList(pd));
		mm.addAttribute("pd", pd);
		System.out.println(pd);
		mm.addAttribute("brands", brandMapper.brandList());
		mm.addAttribute("categories", cateMapper.categoriesList());
		mm.addAttribute("types", typeMapper.typeList());
		mm.addAttribute("adminService", adminUrl);
		return "admin/template";
	}

	@GetMapping("goodsDetail/{productCode}/{page}")
	String goodsDetail(Model mm, PageData2 pd, @PathVariable int productCode) {

		String adminUrl = "goodsDetail";

		mm.addAttribute("bag", bagsMapper.detailBag(productCode));
		mm.addAttribute("brands", brandMapper.brandList());
		mm.addAttribute("categories", cateMapper.categoriesList());
		mm.addAttribute("types", typeMapper.typeList());
		mm.addAttribute("pd", pd);
		mm.addAttribute("adminService", adminUrl);
		return "admin/template";
	}

	// 상품 관리
	@GetMapping("addGoods/{page}")
	String addGoods(Model mm, PageData2 pd) {

		String adminUrl = "addGoods";

		mm.addAttribute("pd", pd);
		mm.addAttribute("brands", brandMapper.brandList());
		mm.addAttribute("categories", cateMapper.categoriesList());
		mm.addAttribute("types", typeMapper.typeList());
		mm.addAttribute("adminService", adminUrl);
		return "admin/template";
	}

	@PostMapping("productCodeChk")
	@ResponseBody
	int productCodeChk(HttpServletRequest request) {

		int productCode = Integer.parseInt(request.getParameter("productCode"));

		return bagsMapper.codeChk(productCode);
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
		String goUrl = "/admin/goodsManage/" + pd.page;
		mm.addAttribute("pd", pd);
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
		mm.addAttribute("pd", pd);
		return "admin/template";
	}

	@PostMapping("modifyGoods/{productCode}/{page}")
	String modifyGoodsReg(Model mm, @PathVariable int productCode, BagsDTO bdto, PageData2 pd) {
		String msg = "상품 수정 실패";
		String goUrl = "/admin/modifyGoods/" + productCode + "/" + pd.page;
		// System.out.println(bdto);
		bdto.setCategoriesId(cateMapper.getCategoriesId(bdto));
		bdto.setTypeId(typeMapper.getTypeId(bdto));
		bdto.setBrandId(brandMapper.getBrandId(bdto));
		bdto.setDefaultProductCode(productCode);
		// System.out.println();
		saveutil.img1Save(bdto);
		saveutil.img2Save(bdto);
		saveutil.img3Save(bdto);
		saveutil.img4Save(bdto);
		System.out.println(bdto);
		int cnt = bagsMapper.modifyBag(bdto);
		if (cnt > 0) {
			if (prdMapper.cntProduct(productCode) != null && prdMapper.cntProduct(productCode) > 0) {
				ProductsBoardDTO prd = prdMapper.getProducts(productCode);

				prd.setProductCode(bdto.getProductCode());
				prd.setCategoriesId(bdto.getCategoriesId());
				prd.setTypeId(bdto.getTypeId());
				prd.setBrandId(bdto.getBrandId());
				prd.setDefaultProductCode(bdto.getDefaultProductCode());
				prd.setProductsBoardStatus(1);
				int updateCheck = prdMapper.updateProductAndBag(prd);

				if (updateCheck > 0) {
					msg = "상품과 관련된 글이 있습니다. 수정 해 주세요.";
					goUrl = "/admin/goodsManage/" + pd.page;
				} else {
					msg = "상품 수정 성공";
					goUrl = "/admin/goodsManage/" + pd.page;
				}
			}
			msg = "상품 수정 성공";
			goUrl = "/admin/goodsManage/" + pd.page;
		}
		mm.addAttribute("goUrl", goUrl);
		mm.addAttribute("msg", msg);
		mm.addAttribute("pd", pd);
		return "admin/inc/alert";
	}

	@PostMapping("modifyBoard")
	@ResponseBody
	int modifyBoard(HttpServletRequest request) {

		int productCode = Integer.parseInt(request.getParameter("productCode"));
		prdMapper.getProducts(productCode);
		if (prdMapper.getProducts(productCode).getProductsBoardId() > 0) {
			return prdMapper.getProducts(productCode).getProductsBoardId();
		}
		return 0;
	}

	@PostMapping("deleteGoods/{page}")
	@ResponseBody
	int deleteGoods(HttpServletRequest request, Model mm, PageData2 pd) {

		String Code = request.getParameter("productCode");
		int productCode = Integer.parseInt(Code);

		// 삭제될 상품 가져와서 남아있는 이미지 삭제
		BagsDTO bDto = bagsMapper.detailBag(productCode);
		// if (bDto.getBagImg1() != null) {
		// new File(path + "\\" + bDto.getBagImg1()).delete();
		// }
		if (bDto.getBagImg2() != null) {
			new File(path + "\\" + bDto.getBagImg2()).delete();
		}
		if (bDto.getBagImg3() != null) {
			new File(path + "\\" + bDto.getBagImg3()).delete();
		}
		if (bDto.getBagImg4() != null) {
			new File(path + "\\" + bDto.getBagImg4()).delete();
		}

		int deleteGoods = bagsMapper.deleteGoods(productCode);

		if (deleteGoods > 0) {
			Integer check = prdMapper.cntProduct(productCode);
			if (check != null && check > 0) {
				prdMapper.deleteBagProduct(productCode);
			}
		}
		mm.addAttribute("pd", pd);
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
		mm.addAttribute("pd", pd);
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
		mm.addAttribute("pd", pd);
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
		mm.addAttribute("pd", pd);
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
		// System.out.println(bagsMapper.getImg4(productCode));
		mm.addAttribute("pd", pd);
		return bagsMapper.getImg4(productCode);
	}

	// 판매 내역
	@GetMapping("salesHistory/{page}")
	String salesHistory(Model mm, PageData2 pd) {

		String adminUrl = "salesHistory";

		pd.calc(ordMapper.orderCnt(pd));

		mm.addAttribute("orderList", ordMapper.orderList(pd));
		mm.addAttribute("adminService", adminUrl);
		mm.addAttribute("pd", pd);
		return "admin/template";
	}

	@RequestMapping("getMonthData")
	public @ResponseBody List<TotalOrderDTO> getMonthData() throws Exception {

		return ordMapper.monthSales();
	}

	@RequestMapping("getYearData")
	public @ResponseBody List<TotalOrderDTO> getYearData() throws Exception {

		return ordMapper.yearSales();
	}

	@RequestMapping("getPerDayData")
	public @ResponseBody List<TotalOrderDTO> getPerDayData(HttpServletRequest request) throws Exception {
		System.out.println();
		return ordMapper.perDaySales(request.getParameter("dateStart"), request.getParameter("dateEnd"));
	}

	@RequestMapping("salesHistory/{page}/{merchantUid}")
	String salesHistoryDetail(HttpSession session, Model mm, PageData2 pd, OrderDTO ordDTO) {
		String templateUrl = "orderDetail";
		// 상품 정보
		OrderDTO ord = ordMapper.getOrder(ordDTO.getMerchantUid());
		System.out.println(ord);
		// 상품이 여러개면
		if (ord.getProdCode().indexOf(",") > 0) {
			String[] prod = ord.getProdCode().split(",");
			String[] amount = ord.getProdCount().split(",");
			String[] name = ord.getPrdName().split(",");
			List<BagsDTO> myBagList = new ArrayList<>();
			for (int i = 0; i < prod.length; i++) {
				BagsDTO bag = new BagsDTO();
				bag.setProductCode(Integer.parseInt(prod[i]));
				bag.setAmount(Integer.parseInt(amount[i]));
				bag.setMerchantUid(ord.getMerchantUid());
				bag.setBagName(name[i]);
				myBagList.add(bag);
			}
			mm.addAttribute("myOrd", myBagList);
		} else {
			BagsDTO bag = new BagsDTO();
			bag.setProductCode(Integer.parseInt(ord.getProdCode()));
			bag.setAmount(Integer.parseInt(ord.getProdCount()));
			bag.setBagName(ord.getPrdName());
			bag.setMerchantUid(ord.getMerchantUid());
			mm.addAttribute("myOrd", bag);
		}
		// 상품 끝
		mm.addAttribute("orderInfo", ord);
		mm.addAttribute("adminService", templateUrl);
		mm.addAttribute("pd", pd);
		return "admin/template";
	}

	@ResponseBody
	@PostMapping("/orderCancel")
	int orderCancel(HttpServletRequest request, OrderDTO ordDTO) {
		String merchant_uid = request.getParameter("data");
		String cancelReason = request.getParameter("cancelReason");
		ordDTO.setMerchant_uid(merchant_uid);
		OrderDTO oDTOs = ordMapper.cancelOrder(ordDTO.getMerchant_uid());
		oDTOs.setCancelReason(cancelReason);
		Map<String, Object> response = (Map<String, Object>) restPay.cancelPay(oDTOs);
		if ((int) response.get("code") == 0) {
			System.out.println(response);
			ordDTO.setOrderStatus("결제 취소");
			ordMapper.cancelOrderUpdate(ordDTO);
			return (int) response.get("code");
		}

		return (int) response.get("code");
	}

	/*
	 * @ResponseBody
	 * 
	 * @PostMapping("/shipReady") int shipReady(HttpServletRequest request, OrderDTO
	 * ordDTO) { String merchant_uid = request.getParameter("data");
	 * ordDTO.setMerchant_uid(merchant_uid); ordDTO.setOrderStatus("배송 준비"); int
	 * ordCheck = ordMapper.shipChange(ordDTO); System.out.println(merchant_uid);
	 * return ordCheck; }
	 */

	/*
	 * @ResponseBody
	 * 
	 * @PostMapping("/shipIng") int shipIng(HttpServletRequest request, OrderDTO
	 * ordDTO) { String merchant_uid = request.getParameter("data");
	 * ordDTO.setMerchant_uid(merchant_uid); ordDTO.setOrderStatus("배송 중"); int
	 * ordCheck = ordMapper.shipChange(ordDTO); System.out.println(merchant_uid);
	 * return ordCheck; }
	 */

	@ResponseBody
	@PostMapping("/shipChange")
	int shipEnd(HttpServletRequest request, OrderDTO ordDTO) {
		String status = request.getParameter("status");
		String merchant_uid = request.getParameter("uid");
		ordDTO.setMerchant_uid(merchant_uid);
		ordDTO.setOrderStatus(status);
		int ordCheck = ordMapper.shipChange(ordDTO);
		
		return ordCheck;
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
