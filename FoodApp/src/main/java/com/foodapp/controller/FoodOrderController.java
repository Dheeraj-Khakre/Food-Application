package com.foodapp.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.foodapp.dao.FoodOrderDao;
import com.foodapp.dao.ProductDao;
import com.foodapp.dao.UserDao;
import com.foodapp.entities.FoodOrder;
import com.foodapp.entities.Item;
import com.foodapp.entities.Product;
import com.foodapp.entities.User;

import net.sf.ehcache.search.parser.MOrderBy;


@Controller
public class FoodOrderController {
	@Autowired
	FoodOrderDao foodOrderDao;
	@Autowired
	UserDao userDao;
	@Autowired
	ProductDao productDao;
	double totalBill = 0;

	@RequestMapping("/viewallfoodorder")
	public ModelAndView viewAllFoodOrder() {
		ModelAndView mav = new ModelAndView("ViewAllFoodOrder");
		mav.addObject("foodOrders", foodOrderDao.viewAllFoodOrder());

		return mav;
	}
	
	@RequestMapping("/orderfood")
	public ModelAndView foodOrder(@RequestParam("id")int id) {
		 ModelAndView mav= new ModelAndView("CreateFoodOrder");
			mav.addObject("user",userDao.viewUserById(id));
			mav.addObject("foodOrder", new FoodOrder());
		 return mav;
		
	}
	@RequestMapping("/savefoodorder")
	public ModelAndView saveFoodOrder(@ModelAttribute("foodorder")FoodOrder order,HttpSession session) {
		 order.setUser((User) session.getAttribute("user"));
		 foodOrderDao.saveFoodOrder(order);
		session.setAttribute("userfoodorder", order);
		ModelAndView mav = new ModelAndView("UserViewAllProduct");
		List<Product> products = productDao.viewAllProduct();
		mav.addObject("products", products);
	
		return mav;
	}

	
	
	@RequestMapping("/submitfoodorder")
	public ModelAndView submitFoodOrder(HttpSession session) {
		FoodOrder order = (FoodOrder)session.getAttribute("userfoodorder");
		@SuppressWarnings("unchecked")
		List<Item> items= (List<Item>) session.getAttribute("itemList");
		order.setItems(items);
		
		items.stream().forEach(i->{
			 totalBill+=i.getCost();
		});
		order.setTotalBill(totalBill);
		
		return new ModelAndView();
	}
}
