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

public class UpdatePersonalDetails extends HttpServlet {
    UserDao userDao = new UserDaoImplementation();

    public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        RequestDispatcher dispatcher = request.getRequestDispatcher("Accountpage.html");
        dispatcher.forward(request, response);
    }

    public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        RequestDispatcher dispatcher = null;
        
        String email = request.getParameter( "email" );
        String firstName = request.getParameter( "firstName" );
        String lastName = request.getParameter( "lastName" );
        String gender = request.getParameter( "gender" );
        String address = request.getParameter( "address" );
        String city = request.getParameter("city");
        String zipcode = request.getParameter( "zipcode" );
        String state = request.getParameter( "state" );
        String country = request.getParameter( "country" );
        String number = request.getParameter("number");

        User user = new User( email, firstName, lastName, gender, address, city, zipcode, state, country, number );

        boolean status = userDao.updateUserDetails( user );

        if (status) {

            
            dispatcher = request.getRequestDispatcher("UpdateSuccess.jsp");

        } else {
            dispatcher = request.getRequestDispatcher("UpdateFailure.jsp");
        }

        dispatcher.forward(request, response);
    }
}