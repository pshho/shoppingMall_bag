package bag.model;

import java.util.Date;

import org.apache.ibatis.type.Alias;

import lombok.Data;

@Alias("ordDTO")
@Data
public class OrderDTO {
	int ordersTotalPrice;
	String merchant_uid, payType, memberId, imp_uid, prodCode, prodCount;
	String prdName, buyerName, buyerEmail, buyerTel, buyerAddr, buyerPostcode, addressMsg;
	Date ordersRegDate;
}
