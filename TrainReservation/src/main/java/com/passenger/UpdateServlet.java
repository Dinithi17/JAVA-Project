package com.passenger;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;



@WebServlet("/UpdateServlet")
public class UpdateServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		    String ID = request.getParameter("id");
		    String Name = request.getParameter("pname");
		    String Email = request.getParameter("pemail");
		    String PhoneNo = request.getParameter("phone");
		    String user_type = request.getParameter("u_type");
		    String Username = request.getParameter("puname");
		    
		    User passengerDB = new PassengerDB();
		    
		    boolean istrue;
		    
		    istrue = passengerDB.UpdateUser(ID, Name, Email, PhoneNo,user_type, Username);
		    
		    if(istrue==true)
		    {   
		    	
		    	List<Passenger> passengerDetails = passengerDB.getUserDetails(Email);
		    	request.setAttribute("passengerDetails", passengerDetails);
		    	
		    	RequestDispatcher dis = request.getRequestDispatcher("Useraccount.jsp");
		    	dis.forward(request, response);
		    	
		    }
		    else
		    {   
		    	List<Passenger> passengerDetails = passengerDB.getUserDetails(Email);
		    	request.setAttribute("passengerDetails", passengerDetails);
		    	
		    	RequestDispatcher dis = request.getRequestDispatcher("Useraccount.jsp");
		    	dis.forward(request, response);
		    	
		    }
		    
	}

}
