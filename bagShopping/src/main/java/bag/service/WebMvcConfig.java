package bag.service;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.client.RestTemplate;
import org.springframework.web.servlet.config.annotation.InterceptorRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;

import jakarta.annotation.Resource;

@Configuration
public class WebMvcConfig implements WebMvcConfigurer {

	@Bean
	RestTemplate restTemplate() {
		return new RestTemplate();
	}
	
	@Resource
	CommonInterceptor commonInterceptor;
	
	@Resource
	LoginInterceptor loginInterceptor;
	
	@Resource
	OrderInterceptor orderInterceptor;
	
	@Resource
	AdminInterceptor adminInterceptor;

	@Override
	public void addInterceptors(InterceptorRegistry registry) {
		
		registry.addInterceptor(loginInterceptor)
		.addPathPatterns("/member/**")
		.addPathPatterns("/member/**/**")
		.excludePathPatterns("/member/sign**")
		.excludePathPatterns("/member/findId")
		.excludePathPatterns("/member/findPw")
		.excludePathPatterns("/member/findPwReg");
		
		registry.addInterceptor(commonInterceptor);
		
		registry.addInterceptor(orderInterceptor)
		.addPathPatterns("/orders/orders");
		
		registry.addInterceptor(adminInterceptor)
		.addPathPatterns("/admin/**")
		.addPathPatterns("/admin/**/**");
	}
}
