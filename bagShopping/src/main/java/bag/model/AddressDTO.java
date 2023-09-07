package bag.model;

import org.apache.ibatis.type.Alias;

import lombok.Data;

@Alias("aDTO")
@Data
public class AddressDTO {
	int basicAddr, addressId;
	String addrName, zipCode, address, detailAddress, memberId, addressPhone;
	String phone1, phone2, phone3, addressMsg;
}
