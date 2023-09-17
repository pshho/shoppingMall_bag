package bag.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Random;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import bag.model.AddressDTO;
import bag.model.BagsDTO;
import bag.model.InquiryDTO;
import bag.model.MemberDTO;
import bag.model.OrderDTO;
import bag.model.PageData2;
import bag.model.QuitMemberDTO;
import bag.service.AddressMapper;
import bag.service.BagsMapper;
import bag.service.CartMapper;
import bag.service.InquiryMapper;
import bag.service.MemberMapper;
import bag.service.OrdersMapper;
import jakarta.annotation.Resource;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;
import net.nurigo.sdk.NurigoApp;
import net.nurigo.sdk.message.model.Message;
import net.nurigo.sdk.message.request.SingleMessageSendingRequest;
import net.nurigo.sdk.message.service.DefaultMessageService;

@Controller
@RequestMapping("/member")
public class MemberController {

	@Resource
	MemberMapper memMapper;
	@Resource
	BagsMapper bagMapper;
	@Resource
	AddressMapper addrMapper;
	@Resource
	InquiryMapper inqMapper;
	@Resource
	CartMapper cartMapper;
	@Resource
	OrdersMapper ordMapper;

	final DefaultMessageService messageService;

	// 메인화면
	@GetMapping("{memberService}")
	String memberService(@PathVariable String memberService) {
		
		System.out.println(memberService);
		return "member/template";
	}
	
	// 회원 가입
	@PostMapping("/signUp")
	String signUpReg(MemberDTO mdto, AddressDTO adto, Model mm) {
		
		String msg = "가입 실패";
		String goUrl = "member/signUp";
		int signUp = 0;
		int address = 0;

		// db insert 성공시 1, 실패시 0 으로 return
		if (mdto != null && adto != null) {
			mdto.setMemberEmail(mdto.getEmailId() + "@" + mdto.getEmailDomain());
			mdto.setMemberPhone(mdto.getPhone1() +"-"+ mdto.getPhone2() +"-"+ mdto.getPhone3());
			signUp = memMapper.insertMember(mdto);
			// adto 에 member 조회용으로 사용할 memberId 추가
			adto.setBasicAddr(1);
			adto.setMemberId(mdto.getMemberId());
			adto.setAddressPhone(mdto.getMemberPhone());
			adto.setAddrName(mdto.getMemberName());
			address = addrMapper.insertAddress(adto);
		}
		// db insert 성공시 가입 환영 메세지와 url 변경
		if (signUp > 0 && address > 0) {
			msg = "가입을 환영합니다";
			goUrl = "/";
		}

		mm.addAttribute("msg", msg);
		mm.addAttribute("goUrl", goUrl);
		return "member/inc/alert";
	}

	// 회원 아이디 중복 체크
	@ResponseBody
	@PostMapping("/idCheck")
	int idCheck(HttpServletRequest request) {

		String userId = request.getParameter("userId");
		System.out.println("중복확인 받은 id값 " + userId);
		int idCheck = memMapper.idCheck(userId);

		return idCheck;
	}
	
	@ResponseBody
	@PostMapping("/pwCheck")
	int pwCheck(HttpServletRequest request, HttpSession session) {
		String memberId = (String) session.getAttribute("userId");	
		String memberPw = request.getParameter("userPw");
		
		int pwCheck = memMapper.pwCheck(memberId, memberPw);

		return pwCheck;
	}

	
	// 휴대폰 인증
	public MemberController() {
		// 반드시 계정 내 등록된 유효한 API 키, API Secret Key를 입력해주셔야 합니다!
		this.messageService = NurigoApp.INSTANCE.initialize("NCSVLIX3AOOHHTOQ", "ZFYWIZR78FZ1LL4EMF0BHF1EACVQUKPG", "https://api.coolsms.co.kr");
	}

	// 회원 핸드폰 번호 중복 체크 및 통과시 문자 인증 진행
	@ResponseBody
	@PostMapping("/sendSMS")
	public String sendOne(HttpServletRequest request) {
		
		//휴대폰번호 중복체크
		int phoneCheck = memMapper.phoneCheck(request.getParameter("phone"));
		
		if(phoneCheck > 0) {
			return "exist";
		}

		Message message = new Message();

		Random rand = new Random();
		String numStr = "";
		for (int i = 0; i < 4; i++) {
			String ran = Integer.toString(rand.nextInt(10));
			numStr += ran;
		}

		// 발신번호 및 수신번호는 반드시 01012345678 형태로 입력되어야 합니다.
		message.setFrom("01052173168");
		message.setTo(request.getParameter("phone"));
		message.setText("아윌비백 인증번호 [" + numStr + "] 를 입력해주세요.");

		this.messageService.sendOne(new SingleMessageSendingRequest(message));

		System.out.println(numStr);
		return numStr;
	}

	// 로그인
	@PostMapping("/signIn")
	String signInReg(MemberDTO mdto, Model mm, HttpSession session) {
		String msg = "아이디와 비밀번호를 확인해주세요.";
		String goUrl = "signIn";
		
		int idPwCheck = memMapper.idPwCheck(mdto);
		System.out.println(mdto.getMemberId());
		System.out.println(idPwCheck);
		if(idPwCheck > 0) {
			if(mdto.getMemberId().equals("admin")) {
				msg = "관리자 로그인 되었습니다.";
				goUrl = "/admin/adminMain";
				session.setAttribute("admin", mdto.getMemberId());
			}else {
				msg = "로그인 되었습니다.";
				goUrl = "/";
				session.setAttribute("userId", mdto.getMemberId());
			}
		}
		
		mm.addAttribute("msg", msg);
		mm.addAttribute("goUrl", goUrl);
		return "member/inc/alert";
	}
	
	// 로그아웃 
	@GetMapping("/logOut")
	String logOut(Model mm, HttpSession session) {
		String msg = session.getAttribute("userId")+"님 로그아웃 되었습니다.";
		String goUrl = "/";
		
		if(session.getAttribute("admin") != null) {
			msg = "관리자 로그아웃 되었습니다.";
			session.invalidate();
			mm.addAttribute("msg", msg);
			mm.addAttribute("goUrl", goUrl);
			return "member/inc/alert";
		}

		cartMapper.allDelete((String)session.getAttribute("userId"));
		session.invalidate();
		
		mm.addAttribute("msg", msg);
		mm.addAttribute("goUrl", goUrl);
		return "member/inc/alert";
	}
	
	@ResponseBody
	@PostMapping("findId")
	String findId(HttpServletRequest request) {
		MemberDTO mdto = memMapper.findId(request.getParameter("name"), request.getParameter("phone"));
		String memberId = mdto.getMemberId();
		System.out.println(memberId);
		return memberId;
	}
	
	@ResponseBody
	@PostMapping("findPw")
	String findPw(HttpServletRequest request) {
		MemberDTO mdto = memMapper.findPw(request.getParameter("id"), request.getParameter("name"), request.getParameter("phone"));
		String memberId = mdto.getMemberId();
		System.out.println(memberId);
		return memberId;
	}
	
	@PostMapping("findPwReg")
	String findPwReg(Model mm, MemberDTO mdto) {
		String msg = "비밀번호 변경 실패";
		String goUrl = "/member/findPw";
		System.out.println(mdto);
		int updateCheck = memMapper.findPwUpdate(mdto.getMemberId(), mdto.getMemberPw());
		if(updateCheck > 0) {
			msg = "비밀번호 변경 되었습니다";
			goUrl = "/";
			mm.addAttribute("msg",msg);
			mm.addAttribute("goUrl", goUrl);
			return "member/inc/alert";
		}
		
		mm.addAttribute("msg",msg);
		mm.addAttribute("goUrl", goUrl);
		return "member/inc/alert";
	}
	
	@PostMapping("quitMemberReg")
	String quitMemberReg(Model mm, MemberDTO mdto, HttpSession session) {
		String msg = "아이디와 비밀번호를 확인해주세요.";
		String goUrl = "quitMember";
		
		if(!session.getAttribute("userId").equals(mdto.getMemberId())) {
			
			mm.addAttribute("msg",msg);
			mm.addAttribute("goUrl", goUrl);
			return "member/inc/alert";
		}
		
		QuitMemberDTO qmDTO = new QuitMemberDTO();
		qmDTO.setMemberId(mdto.getMemberId());
		if(ordMapper.myOrdCnt(mdto.getMemberId()) > 0) {
			qmDTO.setOrderExist("Y");
		}else {
			qmDTO.setOrderExist("N");
		}
		
		int deleteCheck = memMapper.deleteMember(mdto);
		
		if(deleteCheck > 0) {
			msg = "그동안 아윌비백을 이용해주셔서 감사합니다.";
			goUrl = "/";
			memMapper.addQuitMember(qmDTO);
			//inqMapper.quitDelete(qmDTO); 자신의 글과 admin 의 댓글 삭제
			session.invalidate();
			mm.addAttribute("msg",msg);
			mm.addAttribute("goUrl", goUrl);
			return "member/inc/alert";
		}
		mm.addAttribute("msg",msg);
		mm.addAttribute("goUrl", goUrl);
		return "member/inc/alert";
	}
	
	// 마이페이지
	@PostMapping("myPage")
	String myPage(HttpSession session, MemberDTO mdto, AddressDTO adto, Model mm) {
		//System.out.println(session.getAttribute("userId"));		
		String msg = "비밀번호를 확인해주세요.";
		String goUrl = "myPage";

		String userId = (String) session.getAttribute("userId");
		
		mdto.setMemberId(userId);

		int idPwCheck = memMapper.idPwCheck(mdto);
		
		if(idPwCheck > 0) {
			return "redirect:myProfile";
		}

		mm.addAttribute("msg", msg);
		mm.addAttribute("goUrl", goUrl);
		return "member/inc/alert";
	}
	
	
	// 내 정보
	@RequestMapping("myProfile")
	String myProfile(HttpSession session, Model mm) {	
		
		String userId = (String)session.getAttribute("userId");
		String templateUrl = "myProfile";
		
		MemberDTO getUserProfile = memMapper.getUser(userId);
		List<AddressDTO> getUserAddr = addrMapper.getUserAddress(userId);
		
		mm.addAttribute("profile", getUserProfile);
		mm.addAttribute("address", getUserAddr);
		mm.addAttribute("memberService",templateUrl);
		return "member/template";
	}
	
	@GetMapping("addressManage")
	String addressManage(HttpSession session, Model mm) {
		String userId = (String)session.getAttribute("userId");
		String templateUrl = "addressManage";
		MemberDTO getUserProfile = memMapper.getUser(userId);
		List<AddressDTO> getUserAddr = addrMapper.getUserAddress(userId);
		mm.addAttribute("user", getUserProfile);
		mm.addAttribute("address", getUserAddr);
		mm.addAttribute("memberService",templateUrl);
		return "member/template";
	}
	
	@GetMapping("addAddress")
	String addAddress(HttpSession session, Model mm) {
		String userId = (String)session.getAttribute("userId");
		String templateUrl = "addAddress";
		MemberDTO getUserProfile = memMapper.getUser(userId);
		
		mm.addAttribute("user", getUserProfile);
		mm.addAttribute("memberService",templateUrl);
		return "member/template";
	}
	
	@PostMapping("addAddressReg")
	String addAddressReg(HttpSession session, Model mm, AddressDTO addrDTO) {
		String msg = "주소록 추가 실패.";
		String goUrl = "addAddress";
		String userId = (String)session.getAttribute("userId");
		addrDTO.setAddressPhone(addrDTO.getPhone1()+"-"+addrDTO.getPhone2()+"-"+addrDTO.getPhone3());
		
		List<AddressDTO> getUserAddr = addrMapper.getUserAddress(userId);
		if(getUserAddr.size() == 5) {
			msg = "주소는 최대 5개까지 등록 가능합니다";
			goUrl = "addressManage";
			mm.addAttribute("msg", msg);
			mm.addAttribute("goUrl", goUrl);
			return "member/inc/alert";
		}
		if(getUserAddr.isEmpty()) {
			addrDTO.setBasicAddr(1);
		}
		int check = addrMapper.insertAddress(addrDTO);
		if(check > 0) {
			msg = "주소록 추가 성공";
			goUrl = "addressManage";
			mm.addAttribute("msg", msg);
			mm.addAttribute("goUrl", goUrl);
			return "member/inc/alert";
		}
		mm.addAttribute("msg", msg);
		mm.addAttribute("goUrl", goUrl);
		return "member/inc/alert";
	}
	
	@GetMapping("modifyAddress/{addressId}")
	String modifyAddress(HttpSession session, Model mm, @PathVariable int addressId) {
		String userId = (String)session.getAttribute("userId");
		String templateUrl = "modifyAddress";
		MemberDTO getUserProfile = memMapper.getUser(userId);
		AddressDTO getUserAddrOne = addrMapper.getUserAddrOne(userId, addressId);
		
		mm.addAttribute("user", getUserProfile);
		mm.addAttribute("addr",getUserAddrOne);
		mm.addAttribute("memberService",templateUrl);
		return "member/template";
	}
	
	@PostMapping("modifyAddressReg/{addressId}")
	String modifyAddressReg(HttpSession session, Model mm, AddressDTO addrDTO) {
		String msg = "주소록 수정 실패.";
		String goUrl = "modifyAddress/"+addrDTO.getAddressId();
		String userId = (String)session.getAttribute("userId");
		List<AddressDTO> getUserAddr = addrMapper.getUserAddress(userId);
		if(getUserAddr.size() <= 1) {
			addrDTO.setBasicAddr(1);
		}
		addrDTO.setAddressPhone(addrDTO.getPhone1()+"-"+addrDTO.getPhone2()+"-"+addrDTO.getPhone3());
		System.out.println(addrDTO);
		int check = addrMapper.updateAddr(addrDTO);
		if(check > 0) {
			msg = "주소록 수정 성공";
			goUrl = "/member/addressManage";
			mm.addAttribute("msg", msg);
			mm.addAttribute("goUrl", goUrl);
			return "member/inc/alert";
		}
		mm.addAttribute("addr",addrDTO);
		mm.addAttribute("msg", msg);
		mm.addAttribute("goUrl", goUrl);
		return "member/inc/alert";
	}
	
	@ResponseBody
	@PostMapping("/deleteAddress")
	int deleteAddress(HttpServletRequest request, HttpSession session) {
		String memberId = (String) session.getAttribute("userId");	
		String zipCode = request.getParameter("zipCode");
		
		int deleteCheck = addrMapper.deleteAddress(memberId, zipCode);

		return deleteCheck;
	}
	

	@ResponseBody
	@PostMapping("/setBasicAddr")
	int setBasicAddr(HttpServletRequest request, HttpSession session) {
		String memberId = (String) session.getAttribute("userId");	
		String zipCode = request.getParameter("zipCode");
		
		addrMapper.setBasicAddr0(memberId);
		int setCheck = addrMapper.setBasicAddr1(memberId, zipCode);
		
		return setCheck;
	}
	
	// 내 문의내역
	@RequestMapping("myInquiry/{page}")
	String myInquiry(HttpSession session, Model mm, PageData2 pd) {	
		
		String userId = (String)session.getAttribute("userId");
		String templateUrl = "myInquiry";
		pd.calc(inqMapper.myInqCnt(userId));
		Map<String,Object> map = new HashMap<>();
		map.put("id", userId);
		map.put("pd", pd);
		List<InquiryDTO> getUserInq = inqMapper.myInqList(map);
		mm.addAttribute("myInq", getUserInq);
		mm.addAttribute("memberService", templateUrl);
		mm.addAttribute("pd",pd);
		return "member/template";
	}
	
	@RequestMapping("myInquiry/{page}/{id}")
	String inquiryDetail(@PathVariable int id,PageData2 pd, Model mm) {
		
		String templateUrl = "myInquiryDetail";
		mm.addAttribute("pd",pd);
		mm.addAttribute("memberService", templateUrl);
		mm.addAttribute("inquiryDetail",inqMapper.inqDetail(id));
		return "member/template";
	}
	
	@RequestMapping("myOrder/{page}")
	String myOrder(HttpSession session, Model mm, PageData2 pd) {	
		
		String userId = (String)session.getAttribute("userId");
		String templateUrl = "myOrder";
		pd.calc(ordMapper.myOrdCnt(userId));
		Map<String,Object> map = new HashMap<>();
		map.put("id", userId);
		map.put("pd", pd);
		List<OrderDTO> getUserOrd = ordMapper.myPageOrdList(map);
		mm.addAttribute("orderList", getUserOrd);
		mm.addAttribute("memberService", templateUrl);
		mm.addAttribute("pd",pd);
		return "member/template";
	}
	
	@RequestMapping("myOrder/{page}/{merchantUid}")
	String myOrderDetail(HttpSession session, Model mm, PageData2 pd, OrderDTO ordDTO) {	
		String userId = (String)session.getAttribute("userId");
		String templateUrl = "myOrderDetail";
		// 상품 정보
		OrderDTO ord = ordMapper.getOrder(ordDTO.getMerchantUid());
		System.out.println(ord);
		// 상품이 여러개면
		if(ord.getProdCode().indexOf(",") > 0) {
			String [] prod = ord.getProdCode().split(",");
			List<BagsDTO> myBagList = bagMapper.getOrderBags(prod);
			for(int i = 0; i<myBagList.size(); i++) {
				myBagList.get(i).setAmount(Integer.parseInt(ord.getProdCount().split(",")[i]));
				myBagList.get(i).setMerchantUid(ordDTO.getMerchantUid());
			}
			mm.addAttribute("myOrd",myBagList);
		}else {
			BagsDTO myBag = bagMapper.detailBag(Integer.parseInt(ord.getProdCode()));
			myBag.setAmount(Integer.parseInt(ord.getProdCount()));
			myBag.setMerchantUid(ordDTO.getMerchantUid());
			mm.addAttribute("myOrd",myBag);
		}
		// 상품 끝
		mm.addAttribute("orderInfo", ord);
		mm.addAttribute("memberService", templateUrl);
		mm.addAttribute("pd",pd);
		return "member/template";
	}
	
	@PostMapping("modifyPw")
	String modifyProfile(HttpSession session, Model mm, MemberDTO mdto) {
		String msg = "비밀번호 변경 실패.";
		String goUrl = "/member/modifyPw";
		mdto.setMemberId((String)session.getAttribute("userId"));
		int modiPw = memMapper.modifyUserPw(mdto);
		
		if(modiPw > 0) {
			msg = "비밀번호 변경 성공. 다시 로그인 해 주세요";
			goUrl = "/";
			session.invalidate();
			mm.addAttribute("msg", msg);
			mm.addAttribute("goUrl", goUrl);
			return "member/inc/alert";
		}
		
		mm.addAttribute("msg", msg);
		mm.addAttribute("goUrl", goUrl);
		return "member/inc/alert";
	}
	
	
	//구매 확정
	/*
	 * @ResponseBody
	 * 
	 * @PostMapping("/perchaseConfirm") int perchaseConfirm(HttpServletRequest
	 * request, OrderDTO ordDTO) { String merchant_uid =
	 * request.getParameter("data"); ordDTO.setMerchant_uid(merchant_uid);
	 * ordDTO.setOrderStatus("구매 확정"); int ordCheck = ordMapper.shipChange(ordDTO);
	 * System.out.println(merchant_uid); return ordCheck; }
	 */
	
}
