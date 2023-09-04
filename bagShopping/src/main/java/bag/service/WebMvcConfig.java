package bag.service;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.config.annotation.InterceptorRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;

import jakarta.annotation.Resource;

@Configuration
public class WebMvcConfig implements WebMvcConfigurer {

	@Resource
	CommonInterceptor commonInterceptor;
	
	@Resource
	LoginInterceptor loginInterceptor;

	@Override
	public void addInterceptors(InterceptorRegistry registry) {
		
		registry.addInterceptor(loginInterceptor)
		.addPathPatterns("/member/my**");
		
		registry.addInterceptor(commonInterceptor);
	}
}
