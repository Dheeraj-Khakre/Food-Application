package com.foodapp.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.foodapp.dao.ProductDao;
import com.foodapp.entities.Product;

@Controller
public class ProductController {
	@Autowired
	ProductDao productDao;
	@RequestMapping("/addproduct")
	public ModelAndView addProduct() {
		ModelAndView mav = new ModelAndView("AddProduct");
		
		mav.addObject("product",new Product());
		return mav;
	}
	@RequestMapping("/saveproduct")
	public ModelAndView saveProduct(@ModelAttribute("product")Product product) {
		ModelAndView mav = new ModelAndView("AdminHomePage");
		productDao.saveProduct(product);
		
		return mav;
	}
	@RequestMapping("/viewallproduct")
	public ModelAndView viewAllProduct() {
		ModelAndView mav   = new ModelAndView("ViewAllProduct");
		List<Product> products = productDao.viewAllProduct();
		mav.addObject("products", products);
		return mav;
	}

}
