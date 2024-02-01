package com.foodapp.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.foodapp.dao.ItemDao;
import com.foodapp.dao.ProductDao;
import com.foodapp.entities.FoodOrder;
import com.foodapp.entities.Item;
import com.foodapp.entities.Product;


@Controller
public class ItemController {
	@Autowired
	 ItemDao itemDao;
	@Autowired
	ProductDao productDao;
	
	@RequestMapping("/additem")
	public ModelAndView addItem(HttpSession session,@RequestParam("id") int id) {
		ModelAndView mav = new ModelAndView("ItemForm");
		Product product = productDao.viewProductById(id);
		Item item = new Item();
		item.setName(product.getName());
		item.setCost(product.getCost());
		item.setQuentity(1);
		item.setType(product.getType());
		if(session.getAttribute("itemList")==null) {
			session.setAttribute("itemList", new ArrayList<Item>());
		}
		mav.addObject("item",item);
		return mav;
		
		
		
		
	}
	@RequestMapping("/additemoffoodorder")
	public ModelAndView saveItems(@ModelAttribute("item") Item item,HttpSession session) {
		item.setCost(item.getCost() * item.getQuentity());
		   FoodOrder order=(FoodOrder) session.getAttribute("userfoodorder");
		   item.setFoodOrder(order);
		   @SuppressWarnings("unchecked")
		List<Item> items = (List<Item>) session.getAttribute("itemList");
		   items.add(item);
		   ModelAndView mav = new ModelAndView("UserViewAllProduct");
			List<Product> products = productDao.viewAllProduct();
			mav.addObject("products", products);
		
			return mav;
		   
	}

}
