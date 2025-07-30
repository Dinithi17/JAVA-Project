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
 * Servlet implementation class UpdateMessageCustServlet
 */
@WebServlet("/updatemessagecustservlet")
public class UpdateMessageCustServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String contact_id = request.getParameter("contact_id");
        String client_id = request.getParameter("client_id");
        String name = request.getParameter("name");
        String email = request.getParameter("email");
        String subject = request.getParameter("subject");
        String message = request.getParameter("message");

        boolean isTrue;

        isTrue = MessageDBUtil.updateMessage(contact_id, client_id, name, email, subject, message);

        List<Message> messageDetails = MessageDBUtil.getMessageDetails(contact_id);
        request.setAttribute("bookingDetails", messageDetails);

        if (isTrue) {
            String successMessage = "Client details updated successfully.";
            request.setAttribute("successMessage", successMessage);

            // Redirect to prevent resubmission
            response.sendRedirect("viewmessage.jsp");
        } else {
            String unsuccessMessage = "Error, Booking details updation failed.";
            request.setAttribute("unsuccessMessage", unsuccessMessage);

            RequestDispatcher dis1 = request.getRequestDispatcher("viewmessage.jsp");
            dis1.forward(request, response);
        }
    }
}
