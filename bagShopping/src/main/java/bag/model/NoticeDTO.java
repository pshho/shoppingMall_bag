package bag.model;

import java.text.SimpleDateFormat;
import java.util.Date;

import org.apache.ibatis.type.Alias;

import lombok.Data;

@Alias("nDTO")
@Data
public class NoticeDTO {
	int noticeId, cnt;
	String nTitle, nWriter, nContent;
	Date noticeRegDate;
	SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd (E) HH:mm");
	
	public String getNoticeRegDate2() {
		return sdf.format(noticeRegDate);
	}
}
