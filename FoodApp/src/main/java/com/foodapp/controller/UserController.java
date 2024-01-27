package com.foodapp.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.foodapp.dao.UserDao;
import com.foodapp.entities.Admin;
import com.foodapp.entities.User;

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

	@RequestMapping("/signinuser")
	public ModelAndView addUser() {
		ModelAndView mav = new ModelAndView("CreateUser");
		mav.addObject("user", new User());

		return mav;
	}

	@RequestMapping("/saveuser")
	public ModelAndView saveUser(@ModelAttribute("user") User user) {
		ModelAndView mav = new ModelAndView("LoginUser");
		mav.addObject("userid", user.getId());
		userDao.saveUser(user);

		return mav;
	}

	@RequestMapping("/loginuser")
	public ModelAndView loginadmin(@RequestParam("email") String email, @RequestParam("password") String password,HttpSession session) {
		User user = userDao.login(email, password);
		if (user == null) {
			ModelAndView mav = new ModelAndView("LoginUser");
			mav.addObject("mas", "login eamil and Password are Invilid");
			return mav;
		} else {
			ModelAndView mav = new ModelAndView("UserHomePage");
			//mav.addObject("mas", null);
			 session.setAttribute("user", user);
			mav.addObject("user", user);
			
			return mav;

		}

	}
	@RequestMapping("/userinfo")
	public ModelAndView userInfo(@RequestParam("id")int id){
		ModelAndView mav = new ModelAndView("UserInfo");
		mav.addObject("user",userDao.viewUserById(id));
		return mav;
		
	}

}
