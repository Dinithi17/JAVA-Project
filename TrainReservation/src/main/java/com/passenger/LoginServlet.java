package com.passenger;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;
import java.util.List;

@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String Email = request.getParameter("email");
		String Passw = request.getParameter("pass");
		
		User passengerDB = new PassengerDB();
		
		try {
		
		boolean isvalidUser = passengerDB.checkUserExist(Email, Passw);
		
		String UserType = passengerDB.getUserType(Email);
		
		if(isvalidUser==true)
		{
			
			
			HttpSession session = request.getSession();
			session.setAttribute("email", Email);
			
			
			if("User".equals(UserType))
			{
						    	
				RequestDispatcher dis = request.getRequestDispatcher("Index.jsp");
				dis.forward(request, response);
				
				
			}
			else if("Admin".equals(UserType))
			{   
				
				RequestDispatcher dis = request.getRequestDispatcher("AdminHome.jsp");
				dis.forward(request, response);
			}
		}
		else
		{
			
			
			RequestDispatcher dis = request.getRequestDispatcher("Login.jsp");
			dis.forward(request, response);
			
		}
		
		}catch(Exception e) {
			
			e.printStackTrace();
			
		}
		
		
	}

}
