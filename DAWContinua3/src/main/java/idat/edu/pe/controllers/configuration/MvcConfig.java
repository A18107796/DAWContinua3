package idat.edu.pe.controllers.configuration;

import org.springframework.context.annotation.Configuration;
import org.springframework.core.Ordered;
import org.springframework.web.servlet.config.annotation.ViewControllerRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;

@Configuration
public class MvcConfig implements WebMvcConfigurer{
	
	public void addViewControllers(ViewControllerRegistry registry) {
		
		registry.addViewController("/").setViewName("index");
		registry.addViewController("/home").setViewName("index");
		registry.addViewController("/login").setViewName("login");		
		registry.addViewController("/saludo").setViewName("saludo");
		registry.addViewController("/error").setViewName("error");
		registry.addViewController("/bienvenida").setViewName("bienvenida");
		registry.addViewController("/saludo").setViewName("saludo");
		
		
		
	}
}
