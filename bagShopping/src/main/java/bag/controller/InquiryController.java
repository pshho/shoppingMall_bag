package bag.controller;

import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import bag.model.FileDTO;
import bag.model.FileUploadDownload;
import bag.model.InquiryDTO;
import bag.model.PageData;
import bag.service.FileMapper;
import bag.service.InquiryMapper;

@Controller
@RequestMapping("inquiry")
public class InquiryController {
	@Autowired
	InquiryMapper inqMapper;
	
	@Autowired
	FileMapper fMapper;
	
	@Autowired
	FileUploadDownload fud;
	
	@Autowired
	PageData pd;
	
	@ModelAttribute("pd")
	Object pd() {
		pd.setTotalPage(inqMapper.totalInquiry());
		return pd;
	}
	
	@ModelAttribute("inquiryList")
	Object inquiryList() {
		return inqMapper.inqList();
	}
	
	@ModelAttribute("inquiryDetail")
	Object noticeDetail(@PathVariable int id) {
		return inqMapper.inqDetail(id);
	}
	
	@PostMapping("check/{id}")
	String goAlert(@PathVariable int id, InquiryDTO inDTO) {
		int res = inqMapper.checkPw(inDTO);
		if(res > 0) {
			pd.setMsg("확인되었습니다");
			pd.setUrl("/inquiry/inquiryDetail/"+id);
		}else {
			pd.setMsg("비밀번호가 일치하지 않습니다");
			pd.setUrl("/inquiry/detailCheck/"+id);
		}
		return "inquiry/inc/alert";
	}
	
	@PostMapping("inquiryWrite/{id}")
	String inquiryWrite(
			@PathVariable int id,
			InquiryDTO inDTO) {
		inqMapper.inqWrite(inDTO);
		FileDTO fDTO = new FileDTO();
		fDTO.setInquiryId(inqMapper.maxInquiryId());
		fDTO.setComplete(true);
		fDTO.setMemberId(inDTO.getInWriter());
		fMapper.updateFile(fDTO);
		pd.setMsg("문의게시글 작성");
		pd.setUrl("/inquiry/inquiryDetail/"+fDTO.getInquiryId());
		return "inquiry/inc/alert";
	}
	
	@PostMapping("inquiryDelete/{id}")
	@ResponseBody
	Map<String, String> inquiryDelete(
			@PathVariable int id){
		FileDTO fDTO = new FileDTO();
		fDTO.setInquiryId(id);
		inqMapper.deleteInquiry(id);
		for(FileDTO dto : fMapper.boardDelete(fDTO)) {
			fud.fileDelete(dto.getFiles());
		}
		fMapper.boardFileDelete(fDTO);
		Map<String, String> msg = new HashMap<>();
		msg.put("msg", "문의게시글 삭제");
		msg.put("url", "/inquiry/inquiryList/1");
		return msg;
	}
	
	@PostMapping("inquiryReply/{id}")
	String inquiryReply(
			@PathVariable int id,
			InquiryDTO inDTO) {
		inDTO.setGid(id);
		inqMapper.updateSeq(inDTO);
		inDTO.setSeq(inDTO.getSeq()+1);
		inDTO.setLev(inDTO.getLev()+1);
		inqMapper.inqReply(inDTO);
		FileDTO fDTO = new FileDTO();
		fDTO.setInquiryId(inqMapper.maxInquiryId());
		fDTO.setComplete(true);
		fDTO.setMemberId(inDTO.getInWriter());
		fMapper.updateFile(fDTO);
		pd.setMsg("문의게시글 답글 작성");
		pd.setUrl("/inquiry/inquiryDetail/"+fDTO.getInquiryId());
		return "inquiry/inc/alert";
	}
	
	@PostMapping("inquiryModify/{id}")
	String inquiryModify(@PathVariable int id, InquiryDTO inDTO) {
		inDTO.setInquiryId(id);
		inqMapper.updateInquiry(inDTO);
		FileDTO fDTO = new FileDTO();
		fDTO.setInquiryId(id);
		fDTO.setComplete(true);
		fDTO.setMemberId(inDTO.getInWriter());
		fMapper.updateFile(fDTO);
		pd.setMsg("문의게시글 수정");
		pd.setUrl("/inquiry/inquiryDetail/"+id);
		return "inquiry/inc/alert";
	}
	
	@RequestMapping("{inquirySer}")
	String goInquiry(@PathVariable String inquirySer, InquiryDTO inDTO) {
		return "inquiry/templates";
	}
	
	@RequestMapping("{inquirySer}/{id}")
	String goInquiry(@PathVariable String inquirySer, @PathVariable int id,
			InquiryDTO inDTO) {
		pd.setPageStart(id);
		return "inquiry/templates";
	}
}
