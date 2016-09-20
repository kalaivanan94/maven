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

import com.petworld.model.Category;
import com.petworld.model.Product;
import com.petworld.model.Supplier;
import com.petworld.services.CategoryService;
import com.petworld.services.DataService;
import com.petworld.services.SupplierService;

@Controller
public class PetWorld {
	public PetWorld() {
		// TODO Auto-generated constructor stub
		System.out.println("inside store");
	}

	@Autowired
	DataService dataService;
    @Autowired
    CategoryService categoryService;
    @Autowired
    SupplierService supplierService;
	
    @RequestMapping("/")
	public String homePage() {
		return "mainpage";
	}

	@RequestMapping("/form")
	public ModelAndView gotoProduct(ModelMap m) {
		List<Category> cat=categoryService.getList();
		List<Supplier> sup=supplierService.getList();
		m.addAttribute("suplist",sup);
		return new ModelAndView("form","catlist",cat).addObject("prod",new Product());
	}

	@RequestMapping(value = "addProduct", method = RequestMethod.POST)
	public ModelAndView saveProduct(@ModelAttribute("prod") Product prod) {
		dataService.insertRow(prod);
		return new ModelAndView("form");
	}

	@RequestMapping("/list")
	public ModelAndView listProduct() {
		List<Product> productList = dataService.getList();
		return new ModelAndView("list", "productList", productList);
	}

	@RequestMapping("/mainpage")
	public String gotomainpage() {
		return "mainpage";
	}

	@RequestMapping("/aboutus")
	public String gotoaboutus() {
		return "aboutus";
	}

	@RequestMapping("/login")
	public String gotologin() {
		return "login";
	}

	@RequestMapping("/signup")
	public String gotosignup() {
		return "signup";
	}

	@RequestMapping("/edit")
	public ModelAndView editProd(@ModelAttribute("prod") Product prod, @RequestParam int id) {
		prod = dataService.getRowById(id);
		return new ModelAndView("edit", "prdList", prod);
	}

	@RequestMapping(value = "updateProduct", method = RequestMethod.POST)
	public ModelAndView updateProd(@ModelAttribute("prod") Product prod) {
		// prod=dataService.getRowById(id);
		dataService.updateRow(prod);
		return new ModelAndView("redirect:form");
		// return new ModelAndView("list","prod");
	}

	@RequestMapping("/deleteProduct")
	public ModelAndView deleteProd(@RequestParam int id) {
		dataService.deleteRow(id);
		return new ModelAndView("redirect:list");
	}
}