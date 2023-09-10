package bag.service;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import bag.model.InquiryDTO;

@Mapper
public interface InquiryMapper {
	List<InquiryDTO> inqList();
	int totalInquiry();
	InquiryDTO inqDetail(int id);
	int checkPw(InquiryDTO inDTO);
	void inqWrite(InquiryDTO inDTO);
	void inqReply(InquiryDTO inDTO);
	int maxInquiryId();
	void deleteInquiry(int id);
	void updateInquiry(InquiryDTO inDTO);
	void updateSeq(InquiryDTO inDTO);
	List<InquiryDTO> searchList(String searchCate, String searchCont);
	
	List<InquiryDTO> myInqList(String id);
}
