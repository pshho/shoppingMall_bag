package bag.model;

import java.text.SimpleDateFormat;
import java.util.Date;

import org.apache.ibatis.type.Alias;

import lombok.Data;

@Alias("comDTO")
@Data
public class CommentsDTO {
	int commentsId, seq, lev, gid, gpid;
	String content, comWriter;
	Date comRegDate;
	SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd (E) HH:mm");
	
	public String getComRegDate2() {
		return sdf.format(comRegDate);
	}
}
