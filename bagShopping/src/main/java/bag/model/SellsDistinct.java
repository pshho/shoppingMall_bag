package bag.model;

import java.util.Comparator;

import lombok.Data;

@Data
public class SellsDistinct implements Comparator<ProductsBoardDTO> {
	
	@Override
	public int compare(ProductsBoardDTO o1, ProductsBoardDTO o2) {
		if(o2.getSellsAmount() > o1.getSellsAmount()) {
			return 1;
		}else if(o2.getSellsAmount() < o1.getSellsAmount()) {
			return -1;
		}else {
			return 1;
		}
	}
}
