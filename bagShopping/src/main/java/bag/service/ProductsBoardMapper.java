package bag.service;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import bag.model.ProductsBoardDTO;

@Mapper
public interface ProductsBoardMapper {
	List<ProductsBoardDTO> productsBoardList(ProductsBoardDTO prbDTO);
	ProductsBoardDTO productsBoard(ProductsBoardDTO prbDTO);
}
