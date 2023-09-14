package bag.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import bag.model.FileDTO;
import bag.model.FileUploadDownload;
import bag.model.NoticeDTO;
import bag.model.PageData;
import bag.service.NoticeMapper;
import bag.service.FileMapper;

@Controller
@RequestMapping("notice")
public class NoticeController {
	@Autowired
	NoticeMapper notMapper;
	
	@Autowired
	FileMapper fMapper;
	
	@Autowired
	PageData pd;
	
	@Autowired
	FileUploadDownload fud;
	
	List<NoticeDTO> notList;
	
	@ModelAttribute("noticeDetail")
	Object noticeDetail(@PathVariable int id) {
		return notMapper.notDetail(id);
	}
	
	@ModelAttribute("pd")
	Object pd() {
		pd.setPageLimit(10);
		return pd;
	}
	
	@PostMapping("noticeWrite/{id}")
	String noticeWrite(
			@PathVariable int id,
			NoticeDTO nDTO) {
		FileDTO fDTO = new FileDTO();
		notMapper.notWrite(nDTO);
		fDTO.setNoticeId(notMapper.maxNoticeId());
		fDTO.setComplete(true);
		fDTO.setMemberId(nDTO.getNWriter());
		fMapper.updateFile(fDTO);
		pd.setMsg("공지사항 작성");
		pd.setUrl("/notice/noticeDetail/"+fDTO.getNoticeId());
		return "notice/inc/alert";
	}
	
	@PostMapping("noticeModify/{id}")
	String noticeModify(@PathVariable int id, NoticeDTO nDTO) {
		nDTO.setNoticeId(id);
		notMapper.updateNotice(nDTO);
		FileDTO fDTO = new FileDTO();
		fDTO.setNoticeId(id);
		fDTO.setComplete(true);
		fDTO.setMemberId(nDTO.getNWriter());
		fMapper.updateFile(fDTO);
		pd.setMsg("공지사항 수정");
		pd.setUrl("/notice/noticeDetail/"+id);
		return "notice/inc/alert";
	}
	
	@PostMapping("noticeDelete/{id}")
	@ResponseBody
	Map<String, String> noticeDelete(
			@PathVariable int id){
		FileDTO fDTO = new FileDTO();
		fDTO.setNoticeId(id);
		notMapper.deleteNotice(id);
		for(FileDTO dto : fMapper.boardDelete(fDTO)) {
			fud.fileDelete(dto.getFiles());
		}
		fMapper.boardFileDelete(fDTO);
		Map<String, String> msg = new HashMap<>();
		msg.put("msg", "공지사항 삭제");
		msg.put("url", "/notice/noticeList/1");
		return msg;
	}
	
	@RequestMapping("{noticeSer}")
	String goNotice(@PathVariable String noticeSer, NoticeDTO nDTO) {
		return "notice/templates";
	}
	
	@RequestMapping("{noticeSer}/{id}")
	String goNotice(Model md,
			@PathVariable String noticeSer, 
			@PathVariable int id, NoticeDTO nDTO,
			@RequestParam(required = false) String searchCate,
			@RequestParam(required = false) String searchCont) {
		if(searchCate == null) {
			notList = notMapper.notList();
		}else {
			notList = notMapper.searchList(searchCate, searchCont);
		}
		pd.setTotalPage(notList.size());
		pd.setPageStart(id);
		md.addAttribute("searC", searchCate);
		md.addAttribute("sear", searchCont);
		md.addAttribute("noticeList", notList);
		return "notice/templates";
	}
}
