package bag.model;

import org.apache.ibatis.type.Alias;

import lombok.Data;

@Alias("catDTO")
@Data
public class CategoriesDTO {
	int categoriesId;
	String categoriesName;
}
