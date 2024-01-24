package com.foodapp.helper;

import org.springframework.web.servlet.support.AbstractAnnotationConfigDispatcherServletInitializer;

public class WebInitializer extends AbstractAnnotationConfigDispatcherServletInitializer {

	@Override
	protected Class<?>[] getRootConfigClasses() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	protected Class<?>[] getServletConfigClasses() {
		
		Class c[] ={ConfigurationClass.class};
		return c;
	}

	@Override
	protected String[] getServletMappings() {
		 String []urls= {"/"};
		return urls;
	}

}
