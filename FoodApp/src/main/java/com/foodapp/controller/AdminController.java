package com.foodapp.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.foodapp.dao.AdminDao;
import com.foodapp.entities.Admin;

@Controller
public class AdminController {
	@Autowired
	AdminDao adminDao;

	@RequestMapping("/addadmin")
	public ModelAndView addAdmin() {
		ModelAndView mdv = new ModelAndView("CreateAdmin");
		mdv.addObject("admin", new Admin());
		return mdv;
	}

	@RequestMapping("/saveadmin")
	public ModelAndView saveAdmin(@ModelAttribute("admin") Admin admin) {
		adminDao.saveAdmin(admin);
		ModelAndView mav = new ModelAndView("LoginPage");
		mav.addObject("mas", null);
		return mav;

	}

	@RequestMapping("/loginadmin")
	public ModelAndView loginadmin(@RequestParam("email") String email, @RequestParam("password") String password) {
		Admin admin = adminDao.login(email, password);
		if (admin == null) {
			ModelAndView mav = new ModelAndView("LoginPage");
			mav.addObject("mas", "login eamil and Password are wronge");
			return mav;
		} else {
			ModelAndView mav = new ModelAndView("AdminHomePage");

			return mav;

		}

	}


}
