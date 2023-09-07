package bag.model;

import java.util.List;

import org.apache.ibatis.type.Alias;

import lombok.Data;

@Alias("cartDTO")
@Data
public class CartDTO {
	int cartId, productCode, productsCount, sumPrice, sumTotal;
	String memberId;

	public void sumTotal(List<CartDTO> cartList) {
		sumTotal = 0;
		for(CartDTO cart : cartList) {
			sumTotal += cart.getSumPrice();
		}
	}
}
