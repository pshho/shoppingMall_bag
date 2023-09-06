package bag.service;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import bag.model.CartDTO;

@Mapper
public interface CartMapper {
	List<CartDTO> cartList(String memberId);
	void addCart(CartDTO cart);
	int updCart(CartDTO cart);
}