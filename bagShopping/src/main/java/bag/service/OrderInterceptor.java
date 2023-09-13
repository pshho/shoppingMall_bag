package bag.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.servlet.HandlerInterceptor;

import bag.model.CartDTO;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@Service
public class OrderInterceptor implements HandlerInterceptor {
	
	@Autowired
	CartMapper cartMapper;
	
	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {
		HttpSession session = request.getSession();
		String userId = (String)session.getAttribute("userId");
		String nonMemberId = (String)session.getAttribute("nonMemberId");
		List<CartDTO> cartList1 = cartMapper.cartList(userId);
		List<CartDTO> cartList2 = cartMapper.cartList(nonMemberId);
		
		System.out.println(cartList1);
		
		if(userId == null && nonMemberId == null) {
			response.sendRedirect("/shopping/shoppingList/0/0/0/1/newest");
			return false;
		}else if(cartList1.size() == 0 || cartList2.size() == 0) {
			response.sendRedirect("/shopping/shoppingList/0/0/0/1/newest");
			return false;
		}
		
		return true;
	}
}
