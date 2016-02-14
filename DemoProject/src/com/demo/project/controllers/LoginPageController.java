package com.demo.project.controllers;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class LoginPageController {

	@RequestMapping("/login")
	public ModelAndView doLogin(HttpServletRequest request, HttpServletResponse response){
		 String name = request.getParameter("name");
		 String password = request.getParameter("password");
		
		if(password.equals("admin"))
		{
			String message = "HELLO" + name;
			return new ModelAndView("success","msg",message);
		
		}else{
			
			return new ModelAndView("errorpage","msg","Plese Enter valid username or password");
		}
		
		
	}
	
	
	
}