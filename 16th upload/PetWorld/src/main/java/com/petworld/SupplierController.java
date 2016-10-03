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

import com.petworld.model.Supplier;
import com.petworld.services.SupplierService;

@Controller
public class SupplierController {

	public SupplierController() {
		System.out.println("inside supplier");
	}
	
	@Autowired
	SupplierService supplierService;
	
	
	
	@RequestMapping("/spform")
	public ModelAndView gotoSupplier(@ModelAttribute("suppli")Supplier suppli)
	{
		return new ModelAndView("spform");
	}
	
	@RequestMapping(value="addSupplier",method=RequestMethod.POST)
	public ModelAndView saveSupplier(@ModelAttribute("suppli")Supplier suppli)
	{
		supplierService.insertRow(suppli);
		
		return new ModelAndView("spform").addObject("command", new Supplier());
	}
	
	@RequestMapping("/splist")
	public ModelAndView listSupplier(ModelMap n)
	{
		
		List<Supplier> supplierList=supplierService.getList();
		n.addAttribute("chkMsg", "hello");
		return new ModelAndView("splist","supplierList", supplierList);
	}
	
	@RequestMapping("/spedit")
	public ModelAndView editSuppli(@ModelAttribute("suppli")Supplier suppli,@RequestParam int id)
	{
		suppli=supplierService.getRowById(id);
		ModelAndView mv=new ModelAndView("spedit","spList",suppli);
		mv.setViewName("spedit");
		
		return mv.addObject("command", suppli);
	}
	
	@RequestMapping(value="updateSupplier",method=RequestMethod.POST)
	public ModelAndView updateSuppli(@ModelAttribute("suppli")Supplier suppli)
	{
//		prod=dataService.getRowById(id);
		supplierService.updateRow(suppli);
		return new ModelAndView("redirect:splist");
//		return new ModelAndView("list","prod");
	}
	
	@RequestMapping("/deleteSupplier")
	public ModelAndView deleteSuppli(@RequestParam int id)
	{
	supplierService.deleteRow(id);
		return new ModelAndView("redirect:splist");
	}	
}
