package bag.model;

import java.text.SimpleDateFormat;
import java.util.Date;

import org.apache.ibatis.type.Alias;

import lombok.Data;

@Alias("prbDTO")
@Data
public class ProductsBoardDTO {
	int productsBoardId, typeId, productCode, brandId, categoriesId, reviewCount, sellsAmount, productsBoardStatus, defaultProductCode;
	String intro, contents, addressInfo, guide, memberId;
	Date productsBoardRegDate;
	SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd (E) HH:mm");
	
	public String getProductsBoardRegDate2() {
		return sdf.format(productsBoardRegDate);
	}
}
