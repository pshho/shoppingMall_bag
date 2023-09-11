package bag.model;

import java.util.Comparator;

import lombok.Data;

@Data
public class ReviewDistinct implements Comparator<ProductsBoardDTO> {
	
	@Override
	public int compare(ProductsBoardDTO o1, ProductsBoardDTO o2) {
		if(o2.getReviewCount() > o1.getReviewCount()) {
			return 1;
		}else if(o2.getReviewCount() < o1.getReviewCount()) {
			return -1;
		}else {
			return 1;
		}
	}
}
