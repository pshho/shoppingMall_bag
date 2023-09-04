package bag.controller;

import java.util.List;
import java.util.Random;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import bag.model.AddressDTO;
import bag.model.InquiryDTO;
import bag.model.MemberDTO;
import bag.service.AddressMapper;
import bag.service.InquiryMapper;
import bag.service.MemberMapper;
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
	AddressMapper addrMapper;
	@Resource
	InquiryMapper inqMapper;

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
			mdto.setMemberPhone(mdto.getPhone1() + mdto.getPhone2() + mdto.getPhone3());
			signUp = memMapper.insertMember(mdto);
			// adto 에 member 조회용으로 사용할 memberId 추가
			adto.setMemberId(mdto.getMemberId());
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

	
	// 휴대폰 인증
	public MemberController() {
		// 반드시 계정 내 등록된 유효한 API 키, API Secret Key를 입력해주셔야 합니다!
		this.messageService = NurigoApp.INSTANCE.initialize("key", "secret", "https://api.coolsms.co.kr");
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
			msg = "로그인 되었습니다.";
			goUrl = "/";
			session.setAttribute("userId", mdto.getMemberId());
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
		
		session.invalidate();
		
		mm.addAttribute("msg", msg);
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
		String memberService = "myProfile";
		
		MemberDTO getUserProfile = memMapper.getUser(userId);
		AddressDTO getUserAddr = addrMapper.getUserAddress(userId);
		
		mm.addAttribute("profile", getUserProfile);
		mm.addAttribute("address", getUserAddr);
		mm.addAttribute("memberService",memberService);
		
		return "member/template";
	}
	
	// 내 문의내역
	@RequestMapping("myInquiry")
	String myInquiry(HttpSession session, Model mm) {	
		
		String userId = (String)session.getAttribute("userId");
		String memberService = "myInquiry";
		
		List<InquiryDTO> getUserInq = inqMapper.myInqList(userId);
		
		mm.addAttribute("myInq", getUserInq);
		mm.addAttribute("memberService",memberService);
		
		return "member/template";
	}
	
}
