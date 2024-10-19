package com.tadigital.ecommerce.controller;

import com.tadigital.ecommerce.customer.entity.User;
import com.tadigital.ecommerce.customer.entity.Password;
import com.tadigital.ecommerce.customer.dao.UserDaoImplementation;
import com.tadigital.ecommerce.customer.dao.UserDao;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.ServletException;
import javax.servlet.RequestDispatcher;
import java.io.PrintWriter;
import java.io.IOException;

public class UpdatePassword extends HttpServlet {
	UserDao userDao = new UserDaoImplementation();
	
	public void doGet (HttpServletRequest request, HttpServletResponse response ) throws ServletException, IOException {
		RequestDispatcher dispatcher = request.getRequestDispatcher( "Accountpage.html" );
		dispatcher.forward( request, response );
	}
	
	public void doPost ( HttpServletRequest request, HttpServletResponse response ) throws ServletException, IOException {
	    RequestDispatcher dispatcher = null;
		
		String password = request.getParameter( "password" );
		String newPassword = request.getParameter( "newpassword" );
		String retypePassword = request.getParameter( "retypepassword" );
		
		Password passwordObj = new Password( password, newPassword, retypePassword );
		
		boolean status = userDao.updatePassword( passwordObj );
		
		if ( status ) {
			//request.getSession().getAttribute( "EMAIL" );
			dispatcher = request.getRequestDispatcher( "PasswordSuccess.jsp" );
			
		} else {
			dispatcher = request.getRequestDispatcher( "PasswordFailure.jsp" );
		}
		
		dispatcher.forward( request, response );	
	}
}