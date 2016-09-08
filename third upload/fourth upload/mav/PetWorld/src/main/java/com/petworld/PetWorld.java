package com.petworld;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class PetWorld {

	public PetWorld() {
		// TODO Auto-generated constructor stub
		System.out.println("inside store");
	}
	@RequestMapping("/")
	public String homePage() {
	return "mainpage";
	}
	@RequestMapping("/mainpage")
	public String gotohome() {
	return "mainpage";
	}
	@RequestMapping("/signup")
	public String gotosignup() {
	return "signup";
	}
	@RequestMapping("/login")
	public String gotologin() {
	return "login";
	}

}
