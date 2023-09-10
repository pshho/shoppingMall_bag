package bag.service;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import bag.model.CommentsDTO;

@Mapper
public interface CommentsMapper {
	List<CommentsDTO> comList(int id);
	void insertComments(CommentsDTO comDTO);
	Object maxCommentsId();
	void updateComments(CommentsDTO comDTO);
	CommentsDTO comDetail(int id);
	void deleteComments(int id);
	void insertReComments(CommentsDTO comDTO);
	void updateComSeq(CommentsDTO comDTO);
}
