package bag.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@Service
public class CommonInterceptor implements HandlerInterceptor {
	
	@Autowired
	BrandMapper bMapper;
	
	@Autowired
	CategoriesMapper catMapper;
	
	@Autowired
	CartMapper cartMapper;
	
	@Autowired
	TypeMapper typeMapper;
	
	String userId = null;
	
	@Override
	public void postHandle(HttpServletRequest request, HttpServletResponse response, Object handler,
			ModelAndView modelAndView) throws Exception {
		HttpSession session = request.getSession(false);
		if(modelAndView != null) {
			modelAndView.addObject("brandList", bMapper.brandList());
			modelAndView.addObject("categoriesList", catMapper.categoriesList());
			modelAndView.addObject("typeList", typeMapper.typeList());
			
			if(session != null) {
				userId = (String)session.getAttribute("userId");
				modelAndView.addObject("cartCount", cartMapper.cartCount(userId));
			}
		}
	}
}
