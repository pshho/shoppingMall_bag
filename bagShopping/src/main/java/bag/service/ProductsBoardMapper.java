package bag.service;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import bag.model.ProductsBoardDTO;

@Mapper
public interface ProductsBoardMapper {
	List<ProductsBoardDTO> productsBoardList(ProductsBoardDTO prbDTO);
	ProductsBoardDTO productsBoard(ProductsBoardDTO prbDTO);
	void writeProduct(ProductsBoardDTO prbDTO);
	Object maxPrbId();
	void deleteProduct(int productsBoardId);
	void updateProduct(ProductsBoardDTO prbDTO);
	List<ProductsBoardDTO> searchList(String searchCont);
}
