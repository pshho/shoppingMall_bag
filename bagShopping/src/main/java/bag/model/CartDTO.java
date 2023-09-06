package bag.model;

import java.util.List;

import org.apache.ibatis.type.Alias;

import lombok.Data;

@Alias("cartDTO")
@Data
public class CartDTO {
	int cartId, productCode, productsCount, sumPrice;
	String memberId;
	
	public int sumTotal(List<CartDTO> cartList) {
		int total = 0;
		for(CartDTO cart : cartList) {
			total += cart.getSumPrice();
		}
		return total;
	}
}
