package bag.service;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import bag.model.MemberDTO;

@Mapper
public interface MemberMapper {
	
	List<MemberDTO> memberList();
	
	int insertMember(MemberDTO mdto);
	
	int idCheck(String memberId);
	
	int phoneCheck(String memberPhone);
	
	int idPwCheck(MemberDTO mdto);
	
	MemberDTO getUser(String id);
	
	int deleteMember(String id);
}
