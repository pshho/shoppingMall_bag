package bag.service;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;

import bag.model.AddressDTO;

@Mapper
public interface AddressMapper {
	List<AddressDTO> addrList(String id);
	int insertAddress(AddressDTO adto);
	List<AddressDTO> getUserAddress(String memberId);
	AddressDTO basicAddress(String id, int basicAddr);
	AddressDTO selAddr(int addressId);
	void chgBasicAddr(AddressDTO adto);
	
	int deleteAddress(String memberId, String zipCode);
	AddressDTO getUserAddrOne(String memberId, int addressId);
	int updateAddr(AddressDTO addrDTO);
	
	int setBasicAddr0(String memberId);
	int setBasicAddr1(String memberId, String zipCode);
	
}
