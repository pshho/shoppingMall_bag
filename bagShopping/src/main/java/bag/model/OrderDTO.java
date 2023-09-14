package bag.model;

import java.text.SimpleDateFormat;
import java.util.Date;

import org.apache.ibatis.type.Alias;

import lombok.Data;

@Alias("ordDTO")
@Data
public class OrderDTO {
	int ordersTotalPrice, deliveryFee;

	String merchant_uid, payType, memberId, imp_uid, prodCode, prodCount, merchantUid, impUid, orderStatus;
	String prdName, buyerName, buyerEmail, buyerTel, buyerAddr, buyerPostcode, addressMsg, cancelReason;

	Date ordersRegDate;
	
	SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd (E) HH:mm");
	
	public String getOrdersRegDateStr() {
		return sdf.format(ordersRegDate);
	}
}
