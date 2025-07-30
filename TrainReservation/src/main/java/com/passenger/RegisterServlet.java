package com.passenger;

import java.io.IOException;

import org.mindrot.jbcrypt.BCrypt;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/RegisterServlet")
public class RegisterServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		 String name = request.getParameter("pname");
		 String email = request.getParameter("pemail");
		 String p_no = request.getParameter("phone");
		 String user_type = request.getParameter("user_type");
		 String U_name = request.getParameter("puname");
		 String Password = request.getParameter("password");
		 
		 String hashedPassword = BCrypt.hashpw(Password,BCrypt.gensalt(12));
		 
		 User passengerDB = new PassengerDB();
		 
		 boolean isTrue,em_result;
		 
		 em_result = passengerDB.checkEmail(email);
		 
		 isTrue = passengerDB.insertUser(name, email, p_no,user_type, U_name, hashedPassword);
		 
		 if(em_result==false)
		 {
		 
		     if(isTrue==true)
		     {
		    	 
			   RequestDispatcher dis = request.getRequestDispatcher("Login.jsp");
			    dis.forward(request, response);
			     
		      }
		 
		     else {
			 
			 RequestDispatcher dis = request.getRequestDispatcher("unsucces.jsp");
			 dis.forward(request, response);
			 
		     }
		 
		 }
		    else if(em_result==true)
			 
		       {
		    	
		    	RequestDispatcher dis = request.getRequestDispatcher("Register.jsp");
				 dis.forward(request, response);
			 
		        }
		    }
		 
}
	
