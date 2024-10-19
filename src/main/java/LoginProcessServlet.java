package com.tadigital.ecommerce.customer.controller;

import com.tadigital.ecommerce.customer.entity.User;
import com.tadigital.ecommerce.customer.dao.UserDaoImplementation;
import com.tadigital.ecommerce.customer.dao.UserDao;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.ServletException;
import javax.servlet.RequestDispatcher;
import java.io.IOException;

public class LoginProcessServlet extends HttpServlet {
	UserDao userDao = new UserDaoImplementation();
	
	public void doGet (HttpServletRequest request, HttpServletResponse response ) throws ServletException, IOException {
		RequestDispatcher dispatcher = request.getRequestDispatcher( "LoginRegistrationForm.jsp" );
		dispatcher.forward( request, response );
	}
	
	public void doPost ( HttpServletRequest request, HttpServletResponse response ) throws ServletException, IOException {
	    RequestDispatcher dispatcher = null;
		
		HttpSession session = request.getSession();
		
		String email = request.getParameter( "email" );
		String password = request.getParameter( "password" );
		
		User user = new User( email, password );
		
		boolean status = userDao.searchUserByEmailAndPassword( user );
		
		if ( status ) {
			
			session.setAttribute("USERDETAILS", user);
			session.setAttribute("LOGINSTATUS", "SUCCESS");
			
			dispatcher = request.getRequestDispatcher( "index.jsp" );
			
		} else {
			session.setAttribute("LOGINSTATUS", "FAILURE");
			dispatcher = request.getRequestDispatcher( "LoginRegistrationForm.jsp" );
			
		}
		
	   dispatcher.forward( request, response );
		
	}
}