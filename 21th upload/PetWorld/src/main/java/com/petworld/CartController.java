package com.petworld;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.petworld.model.Cart;
import com.petworld.model.Product;
import com.petworld.services.CartService;
import com.petworld.services.DataService;

@Controller
public class CartController {
	@Autowired
	DataService dataService;
	@Autowired
	CartService cartService;

	@RequestMapping("/viewproduct")
	public ModelAndView singlProd(@ModelAttribute("prod") Product prod, @RequestParam int id) {
		prod = dataService.getRowById(id);
		ModelAndView mv = new ModelAndView("viewproduct", "prdList", prod);
		mv.setViewName("viewproduct");
		return mv.addObject("command", prod);
	}

	@RequestMapping(value = "addCart", method = RequestMethod.POST)
	public ModelAndView saveCart(@ModelAttribute("car") Cart car) {
		cartService.insertRow(car);
		return new ModelAndView("cartlist", "viewproduct", car).addObject("command", new Cart());
	}

	@RequestMapping(value = "updateCart", method = RequestMethod.POST)
	public ModelAndView updateProd(@ModelAttribute("car") Cart car) {
		// prod=dataService.getRowById(id);
		cartService.updateRow(car);
		return new ModelAndView("redirect:cartlist");
		// return new ModelAndView("list","prod");
	}

	@RequestMapping("/cartlist")
	public ModelAndView listCart(ModelMap m) {
		List<Cart> cartList = cartService.getList();
		List<Product> productList = dataService.getList();
		m.addAttribute("productList", productList);
		return new ModelAndView("cartlist", "cartList", cartList);
	}
}