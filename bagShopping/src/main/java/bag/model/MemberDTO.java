package bag.model;

import java.util.Date;

import org.apache.ibatis.type.Alias;

import lombok.Data;

@Alias("mDTO")
@Data
public class MemberDTO {

	String id, pw, name;
	String email, emailId, emailDomain;
	String phone, phone1, phone2, phone3;
	Date reg_date;
	
}
