package bag.service;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import bag.model.NoticeDTO;

@Mapper
public interface NoticeMapper {
	List<NoticeDTO> notList();
	NoticeDTO notDetail(int id);
	void notWrite(NoticeDTO nDTO);
	Object maxNoticeId();
	void deleteNotice(int id);
	void updateNotice(NoticeDTO nDTO);
	List<NoticeDTO> searchList(String searchCate, String searchCont);
}
