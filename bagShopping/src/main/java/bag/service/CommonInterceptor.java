package bag.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

import bag.model.CartDTO;
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
	
	@Override
	public void postHandle(HttpServletRequest request, HttpServletResponse response, Object handler,
			ModelAndView modelAndView) throws Exception {
		HttpSession session = request.getSession();
		String userId = (String)session.getAttribute("userId");
		
		if(modelAndView != null) {
			modelAndView.addObject("brandList", bMapper.brandList());
			modelAndView.addObject("categoriesList", catMapper.categoriesList());
			modelAndView.addObject("maxCatCode", catMapper.maxCatCode());
			modelAndView.addObject("categoryName", catMapper.categoryName());
			
			if(userId != null) {
				List<CartDTO> cartList = cartMapper.cartList(userId);
				if(cartList.size() != 0) {
					modelAndView.addObject("cartList", cartMapper.cartList(userId));
				}
			}
		}
		
	}
}
