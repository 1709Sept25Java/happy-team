package com.revature.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
//@RequestMapping(value = "/login")
public class LoginController {

	@RequestMapping(value = "/login",method=RequestMethod.POST)
	public String sayHello() {
		return "Login";
	}

}
