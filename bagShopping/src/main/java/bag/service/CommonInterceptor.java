package bag.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@Service
public class CommonInterceptor implements HandlerInterceptor {
	
	@Autowired
	BrandMapper bMapper;
	
	@Autowired
	CategoriesMapper catMapper;
	
	@Override
	public void postHandle(HttpServletRequest request, HttpServletResponse response, Object handler,
			ModelAndView modelAndView) throws Exception {
		if(modelAndView != null) {
			modelAndView.addObject("brandList", bMapper.brandList());
			modelAndView.addObject("categoriesList", catMapper.categoriesList());
			modelAndView.addObject("maxCatCode", catMapper.maxCatCode());
			modelAndView.addObject("categoryName", catMapper.categoryName());
		}
	}
}
