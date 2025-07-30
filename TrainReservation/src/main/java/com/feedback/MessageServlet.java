package com.feedback;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;




/**
 * Servlet implementation class BookingServlet
 */
@WebServlet("/MessageServlet")
public class MessageServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		PrintWriter out=response.getWriter();
		response.setContentType("text/html");
		
		
		String client_id=request.getParameter("client_id");
		String name=request.getParameter("name");
		String email=request.getParameter("email");
		String subject=request.getParameter("subject");
		String message=request.getParameter("message");
		
		boolean isTrue=	MessageDBUtil.newmessage(client_id, name, email, subject, message);
		
		if(isTrue==true) {
			String successMessage="New Message sent Successfully.";
			request.setAttribute("successMessage", successMessage);
			
			List<Message> messageDetails=MessageDBUtil.getMessageDetails(client_id);
			request.setAttribute("messageDetails", messageDetails);
			
			RequestDispatcher dis=request.getRequestDispatcher("message.jsp");
			dis.forward(request, response);
		}
		
		if(isTrue==false) {
			out.println("<script type='text/javascript'>");
			out.println("alert('Booking Unsucessful.Please try again');");
			out.println("location='clientlogin.jsp'");
			out.println("</script>");
		}
		
		
	}

}
