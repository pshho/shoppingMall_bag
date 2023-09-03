package bag.service;

import org.apache.ibatis.annotations.Mapper;

import bag.model.MemberDTO;

@Mapper
public interface MemberMapper {
	
	int insertMember(MemberDTO mdto);
	
	int idCheck(String id);
	
	int phoneCheck(String phone);
	
	int idPwCheck(MemberDTO mdto);
	
}
