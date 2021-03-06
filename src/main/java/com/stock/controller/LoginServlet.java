package com.stock.controller;

import java.io.IOException;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.stock.exception.InvalidUserException;
import com.stock.impl.UserImpl;
import com.stock.model.User;

/**
 * Servlet implementation class LoginServlet
 */
@WebServlet("/login1")
public class LoginServlet extends HttpServlet {

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		HttpSession session=request.getSession();
		System.out.println("login");
		String mail=request.getParameter("email");
		String pass=request.getParameter("password");
		System.out.println();
		User us=new User(mail,pass);
		
		UserImpl userDao=new UserImpl();
		ResultSet rs=userDao.validateUser(us);
		try {
			
		if(	rs.next()) {
			session.setAttribute("user id", rs.getInt(1));
			session.setAttribute("walletamount", rs.getDouble(8));
			if(rs.getString(7).equals("admin")) {
				
				response.sendRedirect("stockItemsadmin.jsp");
				
			}
			else {
				response.sendRedirect("stockItemsusers.jsp");
			}
		}
		else {
			throw new InvalidUserException ();
		}
		} catch (SQLException e2) {
			// TODO Auto-generated catch block
			e2.printStackTrace();
		}
		//System.out.println(rs.toString());
 catch (InvalidUserException e) {
			// TODO Auto-generated catch block
	 
	     session.setAttribute("log", e.getMessage());
	 
	     response.sendRedirect("index.jsp");
		}
		

		
		
		
		
	}

}
