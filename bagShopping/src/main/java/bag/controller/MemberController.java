package bag.controller;

import java.util.Random;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import bag.model.AddressDTO;
import bag.model.MemberDTO;
import bag.service.AddressMapper;
import bag.service.MemberMapper;
import jakarta.annotation.Resource;
import jakarta.servlet.http.HttpServletRequest;
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
	
	final DefaultMessageService messageService;

	@GetMapping("/signUp")
	String signUp() {

		return "member/templates";
	}

	@PostMapping("/signUp")
	String signUpReg(MemberDTO mdto, AddressDTO adto, Model mm) {
		String msg = "가입 실패";
		String goUrl = "member/signUp";
		int signUp = 0;
		int address = 0;

		// db insert 성공시 1, 실패시 0 으로 return
		if (mdto != null && adto != null) {
			mdto.setEmail(mdto.getEmailId() + "@" + mdto.getEmailDomain());
			mdto.setPhone(mdto.getPhone1() + mdto.getPhone2() + mdto.getPhone3());
			signUp = memMapper.insertMember(mdto);
			// adto 에 member 조회용으로 사용할 memberId 추가
			adto.setMemberId(mdto.getId());
			address = addrMapper.insertAddress(adto);
		}
		// db insert 성공시 가입 환영 메세지와 url 변경
		if (signUp > 0 && address > 0) {
			msg = "가입을 환영합니다";
			goUrl = "/";
		}

		mm.addAttribute("msg", msg);
		mm.addAttribute("goUrl", goUrl);
		return "member/alert";
	}

	@ResponseBody
	@PostMapping("/idCheck")
	int idCheck(HttpServletRequest request) {

		String userId = request.getParameter("userId");
		System.out.println("중복확인 받은 id값 " + userId);
		int idCheck = memMapper.idCheck(userId);

		return idCheck;
	}

	 public MemberController() {
	        // 반드시 계정 내 등록된 유효한 API 키, API Secret Key를 입력해주셔야 합니다!
	        this.messageService = NurigoApp.INSTANCE.initialize("key", "secret", "https://api.coolsms.co.kr");
	    }
	 
	 @ResponseBody
	 @PostMapping("/sendSMS")
	    public String sendOne(HttpServletRequest request) {
	        Message message = new Message();
	        
	        Random rand  = new Random(); 
	        String numStr = "";
	        for(int i=0; i<4; i++) {
	            String ran = Integer.toString(rand.nextInt(10));
	            numStr+=ran;
	        }
	        
	        // 발신번호 및 수신번호는 반드시 01012345678 형태로 입력되어야 합니다.
	        message.setFrom("01052173168");
	        message.setTo(request.getParameter("phone"));
	        message.setText("아윌비백 인증번호 ["+numStr+"] 를 입력해주세요.");

	        this.messageService.sendOne(new SingleMessageSendingRequest(message));
	        
	        System.out.println(numStr);
	        return numStr;
	    }

}
