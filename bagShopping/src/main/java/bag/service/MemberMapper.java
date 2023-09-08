package bag.service;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import bag.model.MemberDTO;
import bag.model.PageData2;

@Mapper
public interface MemberMapper {
	
	List<MemberDTO> memberList(PageData2 pd);
	
	int insertMember(MemberDTO mdto);
	
	int idCheck(String memberId);
	
	int phoneCheck(String memberPhone);
	
	int idPwCheck(MemberDTO mdto);
	
	MemberDTO getUser(String id);
	
	int deleteMember(String id);
	
	int cntMaxUser();
}
