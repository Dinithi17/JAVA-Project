package com.feedback;

import java.io.IOException;
import java.util.List;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;


/**
 * Servlet implementation class DeleteBookingServlet
 */
@WebServlet("/DeleteMessageServlet")
public class DeleteMessageServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String contact_id=request.getParameter("contact_id");
		boolean isTrue;
		
		isTrue=MessageDBUtil.deletemessage(contact_id);
		
		
		if (isTrue) {
		    String successMessage = "Message Deleted successfully.";
		    response.sendRedirect("viewmessage.jsp?successMessage=" + successMessage);
		}
		// In the case of a failure to delete the booking
		else {
		    List<Message> messageDetails = MessageDBUtil.getMessageDetails(contact_id);
		    request.setAttribute("bookingDetails", messageDetails);

		    String unsuccessMessage = "Failed to delete Message.";
		    request.setAttribute("unsuccessMessage", unsuccessMessage);

		    RequestDispatcher dis1 = request.getRequestDispatcher("viewmessage.jsp");
		    dis1.forward(request, response);
		}
		
		
	}

}
