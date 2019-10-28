package com.jimmyyouhei.assignment3.config;

import java.io.IOException;

import javax.servlet.ServletContext;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.config.annotation.EnableWebMvc;
import org.springframework.web.servlet.config.annotation.ResourceHandlerRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;
import org.springframework.web.servlet.view.InternalResourceViewResolver;
import org.springframework.web.servlet.view.JstlView;

import com.jimmyyouhei.assignment3.bean.UserLoggInCount;
import com.jimmyyouhei.assignment3.bean.UsersList;

@Configuration
@EnableWebMvc
@ComponentScan("com.jimmyyouhei.assignment3")
public class SpringMvcConfig implements WebMvcConfigurer {
	
	@Autowired
	ServletContext context;
	
	private final String USERSFILE = "/WEB-INF/users.txt";
	
	@Bean
	public InternalResourceViewResolver resolver() {
		InternalResourceViewResolver viewResolver = new InternalResourceViewResolver();
		viewResolver.setViewClass(JstlView.class);
		viewResolver.setPrefix("/WEB-INF/views/");
		viewResolver.setSuffix(".jsp");
		return viewResolver;
	}

	@Override
	public void addResourceHandlers(ResourceHandlerRegistry registry) {

		registry.addResourceHandler("/resources/**").addResourceLocations("classpath:/");
		
	}
	
	@Bean
	UsersList users() throws IOException {
		UsersList users = new UsersList(USERSFILE , context);
		
		return users;
	}
	

}
	


