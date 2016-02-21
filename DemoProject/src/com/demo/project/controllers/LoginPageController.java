package com.demo.project.controllers;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.hibernate.Session;
import org.hibernate.Transaction;
import org.hibernate.cfg.AnnotationConfiguration;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.demo.project.DAO.UserDAO;
import com.demo.project.DAO.UserPK;

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
	
	@RequestMapping("/register")
	public void doRegister(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException{
		UserDAO user = new UserDAO();
		
		user.setFirstName(request.getParameter("firstname"));
		user.setLastName(request.getParameter("lastname"));
		user.setPassword(request.getParameter("password"));
		
		UserPK userPK = new UserPK();
		
		userPK.setEmail(request.getParameter("email"));
		userPK.setUserName(request.getParameter("username"));
		
		user.setUserPK(userPK);
		
		 Session session=new AnnotationConfiguration()  
         .configure().buildSessionFactory().openSession();
		 
		 Transaction transaction = session.beginTransaction();
		 
		 session.persist(user);
		 
		 transaction.commit();
		 session.close();
		
		 request.getRequestDispatcher("index.jsp").forward(request, response);
		
		
		
		
		
		
	}
	
	
	
}
