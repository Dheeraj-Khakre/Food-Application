package com.foodapp.controller;



import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.foodapp.dao.UserDao;


@Controller
public class UserController {
	@Autowired
	UserDao userDao;

	@RequestMapping("/viewallusers")
	public ModelAndView viewAllUsers() {
		ModelAndView mav = new ModelAndView("ViewAllUsers");
		 mav.addObject("users", userDao.viewAllUser());
			
		

		return mav;

	}


}
