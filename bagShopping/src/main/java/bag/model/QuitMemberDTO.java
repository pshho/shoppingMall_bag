package bag.model;

import java.text.SimpleDateFormat;
import java.util.Date;

import org.apache.ibatis.type.Alias;

import lombok.Data;

@Alias("qmDTO")
@Data
public class QuitMemberDTO {

	String memberId, orderExist;
	Date memberQuitDate;
	
	
	SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd (E) HH:mm");
	
	public String getMemberQuitDateStr() {
		return sdf.format(memberQuitDate);
	}
}
