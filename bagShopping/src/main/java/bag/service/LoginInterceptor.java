package bag.service;

import java.io.PrintWriter;

import org.springframework.stereotype.Service;
import org.springframework.web.servlet.HandlerInterceptor;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@Service
public class LoginInterceptor implements HandlerInterceptor {

	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {
		
		System.out.println("login-inter진입");
		HttpSession session = request.getSession(false);
		
		if(session == null || session.getAttribute("userId") == null) {
			System.out.println("비 로그인 요청");
			
			response.setContentType("text/html; charset=utf-8");
			
			PrintWriter out = response.getWriter();
			
			out.print("<script>alert('로그인 해주세요.'); location.href='signIn';</script>");

			out.flush();

			out.close();
			
			return false;
		}
		
		return true;
	}
}
