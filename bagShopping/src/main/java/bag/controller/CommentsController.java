package bag.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

import bag.model.CommentsDTO;
import bag.service.CommentsMapper;
import bag.service.ProductsBoardMapper;

@RestController
public class CommentsController {
	@Autowired
	CommentsMapper comMapper;
	
	@Autowired
	ProductsBoardMapper prbMapper;
	
	@GetMapping("shopping/shoppingDetail/{prbId}/comments")
	public List<CommentsDTO> reList(@PathVariable int prbId) {
		return comMapper.comList(prbId);
	}
	
	@PostMapping("shopping/shoppingDetail/{prbId}/comments")
	public Map<String, String> reAdd(
			@RequestBody CommentsDTO comDTO) {
		Object max = comMapper.maxCommentsId();
		if(max == null) {
			max = 0;
		}
		
		comDTO.setGid((int)max+1);
		comMapper.insertComments(comDTO);
		prbMapper.updateReviewCount(comDTO.getGpid());
		Map<String, String> msg = new HashMap<>();
		msg.put("msg", "리뷰 작성");
		return msg;
	}
	
	@GetMapping("shopping/shoppingDetail/{prbId}/comments/{id}")
	public CommentsDTO reDetail(@PathVariable int id) {
		return comMapper.comDetail(id);
	}
	
	@PostMapping("shopping/shoppingDetail/{prbId}/comments/{id}")
	public Map<String, String> reUpd(
			@RequestBody CommentsDTO comDTO, @PathVariable int id
			){
		comDTO.setCommentsId(id);
		comMapper.updateComments(comDTO);
		Map<String, String> msg = new HashMap<>();
		msg.put("msg", "리뷰 수정");
		return msg;
	}
	
	@PostMapping("shopping/shoppingDetail/{prbId}/comments/delete/{id}")
	public Map<String, String> reDel(
			@PathVariable int prbId,
			@PathVariable int id){
		comMapper.deleteComments(id);
		prbMapper.subReviewCount(prbId);
		Map<String, String> msg = new HashMap<>();
		msg.put("msg", "리뷰 삭제");
		return msg;
	}
	
	@GetMapping("shopping/shoppingDetail/{prbId}/comments/reply/{id}")
	public CommentsDTO reReply(@PathVariable int prbId, @PathVariable int id) {
		return comMapper.comDetail(id);
	}
	
	@PostMapping("shopping/shoppingDetail/{prbId}/comments/reply/{id}")
	public Map<String, String> reReplyAdd(
			@RequestBody CommentsDTO comDTO, @PathVariable int prbId, @PathVariable int id) {
		comDTO.setGid(comMapper.comDetail(id).getGid());
		comMapper.updateComSeq(comDTO);
		comDTO.setSeq(comDTO.getSeq()+1);
		comMapper.insertReComments(comDTO);
		prbMapper.updateReviewCount(comDTO.getGpid());
		Map<String, String> msg = new HashMap<>();
		msg.put("msg", "답글 등록");
		return msg;
	}
}
