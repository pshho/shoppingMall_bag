package bag.service;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;

import bag.model.BlackListDTO;
import bag.model.MemberDTO;
import bag.model.PageData2;
import bag.model.QuitMemberDTO;

@Mapper
public interface MemberMapper {
	
	List<MemberDTO> memberList(PageData2 pd);
	
	int insertMember(MemberDTO mdto);
	
	int idCheck(String memberId);
	
	int pwCheck(String memberId, String memberPw);
	
	int phoneCheck(String memberPhone);
	
	int idPwCheck(MemberDTO mdto);
	
	MemberDTO getUser(String id);
	
	int cntMaxUser(PageData2 pd);
	
	int modifyUserPw(MemberDTO mdto);
	
	int deleteMember(MemberDTO mdto);
	int addQuitMember(QuitMemberDTO qdto);
	
	int blackMember(String id);
	int blackMemberUpdate(String id);
	
	int clearMember(String id);
	int clearMemberUpdate(String id);
	
	List<QuitMemberDTO> quitMemberList(PageData2 pd);
	int quitMemberCnt(PageData2 pd);
	
}
