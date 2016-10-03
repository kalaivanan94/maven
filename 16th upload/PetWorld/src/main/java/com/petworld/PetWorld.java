package com.petworld;

import java.io.BufferedOutputStream;

import java.io.File;
import java.io.FileOutputStream;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.commons.CommonsMultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.google.gson.Gson;
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

	private static final String UPLOAD_DIRECTORY = "/img";

	@RequestMapping("uploadform")
	public ModelAndView uploadForm() {
		return new ModelAndView("uploadform");
	}

	@RequestMapping("/form")
	public ModelAndView gotoProduct(ModelMap m) {
		List<Category> cat = categoryService.getList();
		List<Supplier> sup = supplierService.getList();
		m.addAttribute("suplist", sup);
		return new ModelAndView("form", "catlist", cat).addObject("prod", new Product());
	}

	@RequestMapping(value = "addProduct", method = RequestMethod.POST)
	public ModelAndView saveProduct(@ModelAttribute("prod") Product prod) {
		MultipartFile file = prod.getFile();
		String filename = file.getOriginalFilename();
		String src = "";

		try {
			byte barr[] = file.getBytes();
			BufferedOutputStream bout = new BufferedOutputStream(new FileOutputStream(
					new File("D:\\mav\\PetWorld\\src\\main\\webapp\\resources\\uploadimg\\" + filename)));
			bout.write(barr);
			bout.flush();
			bout.close();
			src = "/resources/uploadimg/" + filename;
			System.out.println("selected image:" + src);
			// req.setAttribute("�mages", src);
		} catch (Exception e) {
			System.out.println(e);
		}
		dataService.insertRow(prod, src);
		return new ModelAndView("form", "img", src).addObject("command", new Product());
	}
	// @RequestMapping(value="/savefile",method=RequestMethod.POST)
	// public ModelAndView upload(@ModelAttribute("prod")Product prod){
	//// String path=session.getServletContext().getRealPath("/");
	//
	// return new ModelAndView("form","filename",path+"/"+filename);
	// }

	@RequestMapping("/list")
	public ModelAndView listProduct(ModelMap m) {
		List<Product> productList = dataService.getList();
		Gson gson = new Gson();
		String st = gson.toJson(productList);
		m.addAttribute("json", st);

		m.addAttribute("chkMsg", "hello");
		m.addAttribute("productList", productList);
		return new ModelAndView("list", "productList", productList);
	}

	@RequestMapping("/edit")
	public ModelAndView editProd(@ModelAttribute("prod") Product prod, @RequestParam int id,ModelMap m) {
		prod = dataService.getRowById(id);
		List<Category> cat = categoryService.getList();
		List<Supplier> sup = supplierService.getList();
		m.addAttribute("catlist", cat);
		m.addAttribute("suplist", sup);
	
	return new ModelAndView("edit","prdList", prod);
	}

	@RequestMapping(value = "updateProduct", method = RequestMethod.POST)
	public ModelAndView updateProd(@ModelAttribute("prod") Product prod) {

		MultipartFile file = prod.getFile();
		String filename = file.getOriginalFilename();
		String src = "";

		try {
			byte barr[] = file.getBytes();
			BufferedOutputStream bout = new BufferedOutputStream(new FileOutputStream(
					new File("D:\\mav\\PetWorld\\src\\main\\webapp\\resources\\uploadimg\\" + filename)));
			bout.write(barr);
			bout.flush();
			bout.close();
			src = "/resources/uploadimg/" + filename;
			System.out.println("selected image:" + src);
			// req.setAttribute("�mages", src);
		} catch (Exception e) {
			System.out.println(e);
		}
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

	@RequestMapping("/logout")
	public String gotologout() {
		return "mainpage";
	}

	@RequestMapping("/signup")
	public String gotosignup() {
		return "signup";
	}

	@RequestMapping("/cart")
	public String gotocart() {
		return "cart";
	}
	@RequestMapping("/checkout")
	public String gotocheckout() {
		return "checkout";
	}

}