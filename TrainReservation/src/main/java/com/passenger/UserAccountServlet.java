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

@WebServlet("/UserAccountServlet")

public class UserAccountServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		User passengerDB = new PassengerDB();
		
		// Get email from the session
		
		HttpSession session = request.getSession(false);
		String email = (String) session.getAttribute("email");
		
		if(email!=null)
		{   
			// fetch the user details using email
			
			List<Passenger> passengerDetails = passengerDB.getUserDetails(email);
	    	request.setAttribute("passengerDetails", passengerDetails);
	    	
	    	RequestDispatcher dis = request.getRequestDispatcher("Useraccount.jsp");
	    	dis.forward(request, response);
	    	
	    	RequestDispatcher dis1 = request.getRequestDispatcher("AdminUserAccount.jsp");
	    	dis1.forward(request, response);
	    	
		}
		else
		{
			// if no session
			
			response.sendRedirect("Login.jsp");
		}
	}

}
