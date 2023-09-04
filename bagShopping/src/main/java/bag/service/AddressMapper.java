package bag.service;

import org.apache.ibatis.annotations.Mapper;

import bag.model.AddressDTO;
import bag.model.MemberDTO;

@Mapper
public interface AddressMapper {
	
	int insertAddress(AddressDTO adto);
	AddressDTO getUserAddress(String id);
}
