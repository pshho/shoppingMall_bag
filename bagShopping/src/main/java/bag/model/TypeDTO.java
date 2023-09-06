package bag.model;

import java.util.List;

import org.apache.ibatis.type.Alias;

import lombok.Data;

@Alias("tDTO")
@Data
public class TypeDTO {

	int typeId;
	String typeName;
}
