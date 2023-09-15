package bag.service;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;

import bag.model.InquiryDTO;
import bag.model.QuitMemberDTO;

@Mapper
public interface InquiryMapper {
	List<InquiryDTO> inqList();
	int totalInquiry();
	InquiryDTO inqDetail(int id);
	int checkPw(InquiryDTO inDTO);
	void inqWrite(InquiryDTO inDTO);
	int updateGid(int maxId);
	void inqReply(InquiryDTO inDTO);
	int maxInquiryId();
	void deleteInquiry(int id);
	void updateInquiry(InquiryDTO inDTO);
	void updateSeq(InquiryDTO inDTO);
	List<InquiryDTO> searchList(String searchCate, String searchCont);
	
	List<InquiryDTO> myInqList(Map<String, Object> map);
	int myInqCnt(String id);
	
	void quitDelete(QuitMemberDTO qmDTO);
}
