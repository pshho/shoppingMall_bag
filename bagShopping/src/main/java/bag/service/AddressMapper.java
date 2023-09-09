package bag.service;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import bag.model.AddressDTO;

@Mapper
public interface AddressMapper {
	List<AddressDTO> addrList(String id);
	int insertAddress(AddressDTO adto);
	AddressDTO getUserAddress(String id);
	AddressDTO basicAddress(String id, int basicAddr);
	AddressDTO selAddr(int id);
	void chgBasicAddr(AddressDTO adto);
}
