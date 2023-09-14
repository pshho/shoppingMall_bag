package bag.model;

import java.sql.Date;
import java.text.SimpleDateFormat;


import org.apache.ibatis.type.Alias;
import org.springframework.web.multipart.MultipartFile;

import lombok.Data;

@Alias("bagDTO")
@Data
public class BagsDTO {
	int productCode, categoriesId, typeId, brandId, bagPrice, bagSizeW, bagSizeH, bagSizeD,
	bagCapacity, bagWeight, bagStock, productsBoardId, totalPrice, amount, sellsAmount, defaultProductCode;
	
	String bagName, bagOuterFabric, bagInnerFabric, bagZipper, bagBuckle, bagComment, merchantUid, 
	categoriesName, typeName, brandName, bagImg1, bagImg2, bagImg3, bagImg4;
	
	MultipartFile Img1, Img2, Img3, Img4;
	String bagsProductionDayStr;
	Date bagsProductionDay;
	SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM");
	
	

	public int getTotalPrice() {
		return bagPrice * amount;
	}
	
	public String getBagsProductionDay2() {
		return sdf.format(bagsProductionDay);
	}
}
