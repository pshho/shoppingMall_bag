package bag.service;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;

import bag.model.OrderDTO;
import bag.model.PageData2;
import bag.model.TotalOrderDTO;

@Mapper
public interface OrdersMapper {
	void orderInsert(OrderDTO ordDTO);
	
	List<OrderDTO> orderList(PageData2 pd);
	int orderCnt(PageData2 pd);

	List<OrderDTO> myPageOrdList(Map<String, Object> map);
	int myOrdCnt(String id);
	
	int shipChange(OrderDTO ordDTO);
	
	List<OrderDTO> myOrdList(String id);
	OrderDTO cancelOrder(String merchantUid);
	void cancelOrderUpdate(OrderDTO ordDTO);
	
	OrderDTO getOrder(String merchantUid);
	
	List<OrderDTO> chkOrder(String memberId, String orderStatus);
	
	List<TotalOrderDTO> monthSales();
	List<TotalOrderDTO> yearSales();
	
}
