package bag.service;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import bag.model.BagsDTO;
import bag.model.OrderDTO;
import bag.model.PageData2;

@Mapper
public interface BagsMapper {
	
	List<BagsDTO> bagsList(BagsDTO bagDTO);

	List<BagsDTO> allBagsList(PageData2 pd);
	int cntMaxGoods(PageData2 pd);
	
	List<BagsDTO> allProducts();

	BagsDTO bags(BagsDTO bagDTO);
	List<BagsDTO> cartBags(String memberId, int payStatus);
	BagsDTO productsBoardBag(int productCode);
	void insertBag(BagsDTO bagDTO);
	BagsDTO detailBag(int productCode);
	int modifyBag(BagsDTO bagDTO);
	int deleteGoods(int productCode);
	
	List<BagsDTO> getOrderBags(String [] prod);
	
	void deleteImg1(int productCode);
	void deleteImg2(int productCode);
	void deleteImg3(int productCode);
	void deleteImg4(int productCode);
	
	int getImg1(int productCode);
	int getImg2(int productCode);
	int getImg3(int productCode);
	int getImg4(int productCode);
	
	void updSells(BagsDTO bagDTO);
	void updStock(BagsDTO bagDTO);
	
	void cancelOrder(OrderDTO ordDTO);
	
	int codeChk(int productCode);
}
