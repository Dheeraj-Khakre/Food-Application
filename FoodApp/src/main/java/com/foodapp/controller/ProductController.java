package com.foodapp.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
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

		mav.addObject("product", new Product());
		return mav;
	}

	@RequestMapping("/saveproduct")
	public ModelAndView saveProduct(@ModelAttribute("product") Product product) {
		ModelAndView mav = new ModelAndView("AdminHomePage");
		productDao.saveProduct(product);

		return mav;
	}

	@RequestMapping("/viewallproduct")
	public ModelAndView viewAllProduct() {
		ModelAndView mav = new ModelAndView("ViewAllProduct");
		List<Product> products = productDao.viewAllProduct();
		mav.addObject("products", products);
		return mav;
	}

	@RequestMapping("/editproduct")
	public ModelAndView editProduct(@RequestParam("id") int id) {
		ModelAndView mav = new ModelAndView("UpdateProduct");
		mav.addObject("product", productDao.viewProductById(id));
		return mav;
	}

	@RequestMapping("/deleteproduct")
	public ModelAndView deleteProduct(@RequestParam("id") int id) {
		ModelAndView mav = new ModelAndView("ViewAllProduct");
		productDao.deleteProduct(id);
		List<Product> products = productDao.viewAllProduct();
		mav.addObject("products", products);
		return mav;
	}

	@RequestMapping("/updateproduct")
	public ModelAndView updateProduct(@RequestParam("id") int id, @RequestParam("name") String name,
 			@RequestParam("type") String type, @RequestParam("cost") double cost, @RequestParam("qty") int qty) {
 
		Product product =new Product(name, type, cost);
		product.setQty(qty);
		product.setId(id);
		
		
		ModelAndView mav = new ModelAndView("ViewAllProduct");
		productDao.updateProduct(product);
		List<Product> products = productDao.viewAllProduct();
		mav.addObject("products", products);

		return mav;

	}

}
