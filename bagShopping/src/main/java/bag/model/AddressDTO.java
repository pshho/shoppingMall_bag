package bag.model;

import org.apache.ibatis.type.Alias;

import lombok.Data;

@Alias("aDTO")
@Data
public class AddressDTO {

	String addressId, zipCode, address, detailAddress, memberId;
}
