package com.foodapp.helper;

import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.view.InternalResourceViewResolver;

@Configuration
@ComponentScan(basePackages = "com")
public class ConfigurationClass {
	
	
	@Bean
	public InternalResourceViewResolver resolvers() {
	
	 InternalResourceViewResolver resolver = new InternalResourceViewResolver();
	 resolver.setSuffix(".jsp");
	 resolver.setPrefix("/");// represents web - app folder 
	 return resolver;
	}
	
	
	@Bean
	public EntityManagerFactory getemf() {
		return Persistence.createEntityManagerFactory("foodapp");
	}

}
