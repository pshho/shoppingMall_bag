package bag.model;

import java.text.SimpleDateFormat;
import java.util.Date;

import org.apache.ibatis.type.Alias;

import lombok.Data;

@Alias("mDTO")
@Data
public class MemberDTO {

	String memberId, memberPw, memberName;
	String memberEmail, emailId, emailDomain;
	String memberPhone, phone1, phone2, phone3;
	Date memberRegDate;
	String modifyPw;
	String memberStatus;
	
	SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd (E) HH:mm");
	
	public String getMemberRegDateStr() {
		return sdf.format(memberRegDate);
	}
}
