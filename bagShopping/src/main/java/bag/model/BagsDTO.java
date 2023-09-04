package bag.model;

import org.apache.ibatis.type.Alias;

import lombok.Data;

@Alias("bagDTO")
@Data
public class BagsDTO {
	int productCode, brandId, bagPrice, bagSize, bagCapacity, bagWeight, categoriesId, bagStock;
	String bagName, bagOuterFabric, bagInnerFabric, bagZipper, bagBuckle;
}
