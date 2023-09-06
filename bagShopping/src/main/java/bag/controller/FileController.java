package bag.controller;

import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.multipart.MultipartFile;

import bag.model.FileDTO;
import bag.model.FileUploadDownload;
import bag.service.FileMapper;

@RestController
@RequestMapping("fileUpload/")
public class FileController {
	
	@Autowired
	FileMapper fMapper;
	
	@Autowired
	FileUploadDownload fud;
	
	@PostMapping("files")
	Map<String, String> file(@RequestParam("file") MultipartFile mf, @RequestParam("member") String member) {
		Map<String, String> msg = new HashMap<>();
		String fName = fud.fileSave(mf);
		msg.put("file", fName);
		FileDTO fDTO = new FileDTO();
		fDTO.setFiles(fName);
		fDTO.setMemberId(member);
		fMapper.insertFile(fDTO);
		return msg;
	}
	
	@PostMapping("fileDelete")
	Map<String, String> fileDelete() {
		Map<String, String> msg = new HashMap<>();
		for(FileDTO fDTO : fMapper.searchfiles()) {
			fud.fileDelete(fDTO.getFiles());
			fMapper.filesDelete(fDTO);
		}
		msg.put("msg", "취소되었습니다");
		return msg;
	}
	
	@PostMapping("writingFileDelete/{fileName}")
	Map<String, String> writingFileDelete(@PathVariable String fileName) {
		FileDTO fDTO = new FileDTO();
		fDTO.setFiles(fileName);
		int res = fMapper.writingFileDelete(fDTO);
		if(res > 0) {
			fud.fileDelete(fileName);
		}
		Map<String, String> msg = new HashMap<>();
		msg.put("msg", "작성 중 파일 삭제");
		return msg;
	}
}
