package com.foodapp.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.foodapp.dao.FoodOrderDao;


@Controller
public class FoodOrderController {
	@Autowired
	FoodOrderDao foodOrderDao;

	@RequestMapping("/viewallfoodorder")
	public ModelAndView viewAllFoodOrder() {
		ModelAndView mav = new ModelAndView("ViewAllFoodOrder");
		mav.addObject("foodOrders", foodOrderDao.viewAllFoodOrder());

		return mav;
	}

}
