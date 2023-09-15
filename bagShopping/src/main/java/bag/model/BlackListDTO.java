package bag.model;

import java.text.SimpleDateFormat;
import java.util.Date;

import org.apache.ibatis.type.Alias;

import lombok.Data;

@Alias("bmDTO")
@Data
public class BlackListDTO {

	String memberId, order_exist;
	
	Date blackListRegDate;
	
	SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd (E) HH:mm");
	
	public String getBlackListRegDate() {
		return sdf.format(blackListRegDate);
	}
}
