package bag.service;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;

import bag.model.OrderDTO;
import bag.model.PageData2;

@Mapper
public interface OrdersMapper {
	void orderInsert(OrderDTO ordDTO);
	List<OrderDTO> orderList(PageData2 pd);
	List<OrderDTO> myOrdList(Map<String, Object> map);
	int myOrdCnt(String id);
}
