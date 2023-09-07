package bag.service;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import bag.model.BagsDTO;
import bag.model.BrandDTO;

@Mapper
public interface BrandMapper {
	List<BrandDTO> brandList();
	int getBrandId(BagsDTO bdto);
	String getBrandName(BagsDTO bdto);
}
