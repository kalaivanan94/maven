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
import com.petworld.services.CategoryService;

@Controller
public class CategoryController {

	public CategoryController() {
		System.out.println("inside category");
	}
	
	@Autowired
	CategoryService categoryService;
	
	
	
	@RequestMapping("/catform")
	public ModelAndView gotoCategory(@ModelAttribute("categ")Category categ)
	{
		return new ModelAndView("catform");
	}
	
	@RequestMapping(value="addCategory",method=RequestMethod.POST)
	public ModelAndView saveCategory(@ModelAttribute("categ")Category categ)
	{
		categoryService.insertRow(categ);
		
		return new ModelAndView("catform").addObject("command", new Category());
	}
	
	@RequestMapping("/catlist")
	public ModelAndView listCategory(ModelMap k)
	{
		
		List<Category> categoryList=categoryService.getList();
		k.addAttribute("chkMsg", "hello");
		return new ModelAndView("catlist","categoryList", categoryList);
	}
	
	@RequestMapping("/catedit")
	public ModelAndView editCateg(@ModelAttribute("categ")Category categ,@RequestParam int id)
	{
		categ=categoryService.getRowById(id);
		ModelAndView mv=new ModelAndView("catedit","catList",categ);
		mv.setViewName("catedit");
		
		return mv.addObject("command", categ);
	}
	
	@RequestMapping(value="updateCategory",method=RequestMethod.POST)
	public ModelAndView updateCateg(@ModelAttribute("categ")Category categ)
	{
//		prod=dataService.getRowById(id);
		categoryService.updateRow(categ);
		return new ModelAndView("redirect:catlist");
//		return new ModelAndView("list","prod");
	}
	
	@RequestMapping("/deleteCategory")
	public ModelAndView deleteCateg(@RequestParam int id)
	{
	categoryService.deleteRow(id);
		return new ModelAndView("redirect:catlist");
	}	
}
