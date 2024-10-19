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

public class RegistrationProcessServlet extends HttpServlet {
	UserDao userDao = new UserDaoImplementation();
	
	public void doGet (HttpServletRequest request, HttpServletResponse response ) throws ServletException, IOException {
		RequestDispatcher dispatcher = request.getRequestDispatcher( "LoginRegistrationForm.jsp" );
		dispatcher.forward( request, response );
	}
	
	public void doPost ( HttpServletRequest request, HttpServletResponse response ) throws ServletException, IOException {
	    HttpSession session = request.getSession();
		
		String name = request.getParameter( "name" );
		String[] names = name.split( " " );
		String firstName = names[0];
		String lastName = "";
		if( names[names.length-1] != firstName ){
			for( int i = 1; i<=names.length-1; i++ ) {
			lastName = lastName + " " + names[i];
			}
		}
		
		String email = request.getParameter( "email" );
		String password = request.getParameter( "password" );
		
		final String profilePicture="default-user.png";
		
		User user = new User();
		user.setfirstName( firstName );
		user.setlastName( lastName );
		user.setEmail( email );
		user.setPassword( password );
		user.setProfilePicture( profilePicture );
		
		boolean status = userDao.insertNewUser( user );
		
		if ( status ) {
			
			session.setAttribute("REGISTRATIONSTATUS", "SUCCESS");
			
			
		} else {
	    	session.setAttribute("REGISTRATIONSTATUS", "FAILURE");	
			
		}
		RequestDispatcher dispatcher = request.getRequestDispatcher( "LoginRegistrationForm.jsp" );;
		dispatcher.forward( request, response );	
	}
}