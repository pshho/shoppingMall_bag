package bag.service;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import bag.model.NoticeDTO;

@Mapper
public interface NoticeMapper {
	List<NoticeDTO> notList();
	int totalNotice();
	NoticeDTO notDetail(int id);
	void notWrite(NoticeDTO nDTO);
	int maxNoticeId();
	void deleteNotice(int id);
	void updateNotice(NoticeDTO nDTO);
}
