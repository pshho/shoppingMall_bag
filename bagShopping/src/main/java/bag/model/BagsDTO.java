package bag.model;

import java.text.SimpleDateFormat;
import java.util.Date;

import org.apache.ibatis.type.Alias;

import lombok.Data;

@Alias("bagDTO")
@Data
public class BagsDTO {
	int productCode, categoriesId, typeId, brandId, bagPrice, bagSizeW, bagSizeH, bagSizeD,
	bagCapacity, bagWeight, bagStock, productsBoardId, totalPrice, amount, sellsAmount;
	String bagName, bagOuterFabric, bagInnerFabric, bagZipper, bagBuckle, bagComment,
	bagImg1, bagImg2, bagImg3, bagImg4;
	Date bagsProductionDay;
	SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM");
	
	public int getTotalPrice() {
		return bagPrice * amount;
	}
	
	public String getBagsProductionDay2() {
		return sdf.format(bagsProductionDay);
	}
}
