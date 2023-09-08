package bag.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import jakarta.servlet.http.HttpSessionEvent;
import jakarta.servlet.http.HttpSessionListener;

@Service
public class SessionListener implements HttpSessionListener {
	
	@Autowired
	CartMapper cartMapper;
	
	@Override
	public void sessionDestroyed(HttpSessionEvent se) {
		String user = (String)se.getSession().getAttribute("userId");
		cartMapper.allDelete(user);
	}
}
