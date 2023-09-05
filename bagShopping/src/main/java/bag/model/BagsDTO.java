package bag.model;

import org.apache.ibatis.type.Alias;

import lombok.Data;

@Alias("bagDTO")
@Data
public class BagsDTO {
	int productCode, brandId, bagPrice, bagSizeW, bagSizeH, bagSizeD,
	bagCapacity, bagWeight, categoriesId, bagStock, productsBoardId, totalPrice, amount;
	String bagName, bagOuterFabric, bagInnerFabric, bagZipper, bagBuckle, sizeGuide,
	bagImg1, bagImg2, bagImg3, bagImg4;
	
	public int getTotalPrice() {
		return bagPrice * amount;
	}
}
