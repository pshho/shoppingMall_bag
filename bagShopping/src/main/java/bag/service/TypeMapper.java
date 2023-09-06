package bag.service;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import bag.model.TypeDTO;

@Mapper
public interface TypeMapper {
	
	List<TypeDTO> typeList();
	
}
