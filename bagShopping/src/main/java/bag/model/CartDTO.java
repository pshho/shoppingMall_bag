package bag.model;

import org.apache.ibatis.type.Alias;

import lombok.Data;

@Alias("cartDTO")
@Data
public class CartDTO {
	int cartId, productCode, productsCount, sumPrice;
	String memberId;
}
