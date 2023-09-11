package bag.model;

import lombok.Data;

@Data
public class NonMember {
	String nonMemberId, nonMemberName, phone, phone1, phone2, phone3; 

	public String getPhone() {
		return phone1+phone2+phone3;
	}
}
