package bag.service;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import bag.model.BrandDTO;

@Mapper
public interface BrandMapper {
	List<BrandDTO> brandList();
}
