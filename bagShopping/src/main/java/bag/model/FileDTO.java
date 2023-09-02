package bag.model;

import org.apache.ibatis.type.Alias;

import lombok.Data;

@Alias("fDTO")
@Data
public class FileDTO {
	int fileId, productsBoardId, noticeId, inquiryId, boardDistinct;
	String files;
	boolean complete;
}
