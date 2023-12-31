package bag.service;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import bag.model.ProductsBoardDTO;

@Mapper
public interface ProductsBoardMapper {
	List<ProductsBoardDTO> productsBoardList(ProductsBoardDTO prbDTO);
	List<ProductsBoardDTO> allPrbList();
	List<ProductsBoardDTO> newPrb(int productsBoardStatus);
	ProductsBoardDTO productsBoard(ProductsBoardDTO prbDTO);
	void writeProduct(ProductsBoardDTO prbDTO);
	int maxPrbId();
	void deleteProduct(int productsBoardId);
	void updateProduct(ProductsBoardDTO prbDTO);
	List<ProductsBoardDTO> searchList(ProductsBoardDTO prbDTO);
	void updateReviewCount(int productsBoardId);
	void subReviewCount(int productsBoardId);
	void updateSells(int sells, int productCode);
	
	ProductsBoardDTO getProducts(int productCode);
	int getProductWritten(int productCode);
	int updateProductAndBag(ProductsBoardDTO prbDTO);

	List<Integer> prbIds(String... prdCodes);
	
	Integer cntProduct(int productCode);
	int deleteBagProduct(int productCode);
	void chgPrbStatus(ProductsBoardDTO prbDTO);
	ProductsBoardDTO chkPrbStatus(int productCode);
}
