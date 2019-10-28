package com.jimmyyouhei.assignment3.config;

import org.springframework.web.servlet.support.AbstractAnnotationConfigDispatcherServletInitializer;

public class DispatcherServletInit extends AbstractAnnotationConfigDispatcherServletInitializer {

	@Override
	protected Class<?>[] getRootConfigClasses() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	protected Class<?>[] getServletConfigClasses() {
		return new Class[] {SpringMvcConfig.class};
	}

	@Override
	protected String[] getServletMappings() {
		return new String[] {"/"};
	}

}
