package bag.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Configuration;

import jakarta.servlet.http.HttpSessionEvent;
import jakarta.servlet.http.HttpSessionListener;

@Configuration
public class SessionListener implements HttpSessionListener {
	
	@Autowired
	CartMapper cartMapper;
	
	@Override
	public void sessionDestroyed(HttpSessionEvent se) {
		String user = (String)se.getSession().getAttribute("userId");
		String nonMember = (String)se.getSession().getAttribute("nonMemberId");
		cartMapper.allDelete(user);
		cartMapper.allDelete(nonMember);
	}
}
