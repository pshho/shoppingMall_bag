package bag.model;

import org.apache.ibatis.type.Alias;

import lombok.Data;

@Alias("brDTO")
@Data
public class BrandDTO {
	int brandId;
	String brandName;
}
