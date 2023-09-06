package bag.service;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import bag.model.CategoriesDTO;


@Mapper
public interface CategoriesMapper {
	List<CategoriesDTO> categoriesList();
}
