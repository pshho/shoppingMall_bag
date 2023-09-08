package bag.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import jakarta.servlet.annotation.WebListener;
import jakarta.servlet.http.HttpSessionEvent;
import jakarta.servlet.http.HttpSessionListener;

@WebListener
@Service
public class SessionListener implements HttpSessionListener {
	
	@Autowired
	CartMapper cartMapper;
	
	String userId;

	@Override
	public void sessionCreated(HttpSessionEvent se) {
		userId = (String)se.getSession().getAttribute("userId");
	}
	
	@Override
	public void sessionDestroyed(HttpSessionEvent se) {
		String userId = (String)se.getSession().getAttribute("userId");
		if(se.getSession() == null) {
			System.out.println("작동?");
			cartMapper.allDelete(userId);
		}
	}
}
