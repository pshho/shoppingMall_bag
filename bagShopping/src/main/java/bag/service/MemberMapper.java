package bag.service;

import org.apache.ibatis.annotations.Mapper;

import bag.model.MemberDTO;

@Mapper
public interface MemberMapper {
	
	int insertMember(MemberDTO mdto);
	
	int idCheck(String memberId);
	
	int phoneCheck(String memberPhone);
	
	int idPwCheck(MemberDTO mdto);
	
	MemberDTO getUser(String id);
}
