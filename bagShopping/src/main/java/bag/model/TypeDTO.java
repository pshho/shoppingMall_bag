package bag.model;

import org.apache.ibatis.type.Alias;

import lombok.Data;

@Alias("tDTO")
@Data
public class TypeDTO {

	int typeId, categoriesId;
	String typeName;
}
