package bag.model;

import java.text.SimpleDateFormat;
import java.util.Date;

import org.apache.ibatis.type.Alias;

import lombok.Data;

@Alias("inDTO")
@Data
public class InquiryDTO {
	int inquiryId, seq, lev, gid;
	String inTitle, inWriter, inContent, inquiryPw;
	Date inquiryRegDate;
	SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd (E) HH:mm");
	
	public String getInquiryRegDate2() {
		return sdf.format(inquiryRegDate);
	}
}
