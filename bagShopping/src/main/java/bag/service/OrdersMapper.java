package bag.service;

import org.apache.ibatis.annotations.Mapper;

import bag.model.OrderDTO;

@Mapper
public interface OrdersMapper {
	void orderInsert(OrderDTO ordDTO);
}
