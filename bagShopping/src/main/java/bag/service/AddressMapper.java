package bag.service;

import org.apache.ibatis.annotations.Mapper;

import bag.model.AddressDTO;

@Mapper
public interface AddressMapper {
	
	int insertAddress(AddressDTO adto);
	
}
