package bag.model;

import org.springframework.stereotype.Component;

import lombok.Data;

@Component
@Data
public class PageData2 {

	public int page;
	public int limit = 5;
	public int pageLimit = 5;
	public int start, pageStart, pageEnd, total, pageTotal;
	public String searchType;
	public String keyword;
	public String dateStart, dateEnd;

	public void calc(int total) {
		this.total = total;

		pageTotal = total / limit;

		if ((total % limit) > 0) {
			pageTotal++;
		}

		start = (page - 1) * limit;
		pageStart = (page - 1) / pageLimit * pageLimit + 1;
		pageEnd = pageStart + pageLimit - 1;

		if (pageEnd > pageTotal) {
			pageEnd = pageTotal;
		}

	}
}
