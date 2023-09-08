package bag.service;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import bag.model.BagsDTO;

@Mapper
public interface BagsMapper {
	
	List<BagsDTO> bagsList(BagsDTO bagDTO);
	List<BagsDTO> allProducts();
	BagsDTO bags(BagsDTO bagDTO);
	List<BagsDTO> cartBags(String memberId);
	BagsDTO productsBoardBag(int productCode);
	void insertBag(BagsDTO bagDTO);
	BagsDTO detailBag(int productCode);
	
	void deleteImg1(int productCode);
	void deleteImg2(int productCode);
	void deleteImg3(int productCode);
	void deleteImg4(int productCode);
	int getImg1(int productCode);
	int getImg2(int productCode);
	int getImg3(int productCode);
	int getImg4(int productCode);
}
