package bag.service;

import org.springframework.web.WebApplicationInitializer;

import jakarta.servlet.ServletContext;
import jakarta.servlet.ServletException;

public class MyInitializer implements WebApplicationInitializer {

	@Override
	public void onStartup(ServletContext servletContext) throws ServletException {
		servletContext.addListener(SessionListener.class);
	}

}
