package com.app.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class EmployeeController {
	@RequestMapping("/show")
  public String showReg() {
	return "Register";  
  }
	@RequestMapping("/check")
	public @ResponseBody String checkName(@RequestParam("en")String name) {
		String msg="";
		if(name.equalsIgnoreCase("ajax")) {
			msg="Name already exists";
	}
		return msg;
		
	}
}
