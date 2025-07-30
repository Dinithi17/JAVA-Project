package com.passenger;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/DeleteServlet")
public class DeleteServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		  String id = request.getParameter("id");
		  
		  User passengerDB = new PassengerDB();
		  
		  boolean istrue = passengerDB.DeleteUser(id);
		  
		  if(istrue==true)
		  {
			 
			  RequestDispatcher dis = request.getRequestDispatcher("Register.jsp");
			  dis.forward(request, response);
			  
		  }
		  
		  else
		  { 
			  
			  RequestDispatcher dis = request.getRequestDispatcher("DeleteProfile.jsp");
			  dis.forward(request, response);
		  }
	}

}
