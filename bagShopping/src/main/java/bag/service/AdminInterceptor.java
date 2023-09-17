package bag.service;

import java.io.PrintWriter;

import org.springframework.stereotype.Service;
import org.springframework.web.servlet.HandlerInterceptor;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@Service
public class AdminInterceptor implements HandlerInterceptor {
	
	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {
		
		System.out.println("admin-inter진입");
		HttpSession session = request.getSession(false);
		
		if(session == null || session.getAttribute("admin") == null) {
			System.out.println("비 관리자 요청");
			
			response.setContentType("text/html; charset=utf-8");
			
			PrintWriter out = response.getWriter();
			
			out.print("<script>alert('관리자만 접근 가능 합니다.');</script>");
			out.print("<script>location.href='/';</script>");

			out.flush();

			out.close();
			
			return false;
		}
		
		return true;
	}
}
