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
 * Servlet implementation class CustomerMessageServlet
 */
@WebServlet("/CustomerMessageServlet")
public class CustomerMessageServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Call the database utility method to retrieve all booking details
        List<Message> messageDetails = MessageDBUtil.getAllMessage();

        if (messageDetails != null && !messageDetails.isEmpty()) {
            // Set the retrieved booking details in the request attribute
            request.setAttribute("MessageDetails", messageDetails);

            // Forward the request to a JSP for displaying the details
            RequestDispatcher dispatcher = request.getRequestDispatcher("viewcusmessage.jsp");
            dispatcher.forward(request, response);
        } else {
            // Handle the case where no booking details were found
            request.setAttribute("errorMessage", "No messages found.");
            RequestDispatcher dispatcher = request.getRequestDispatcher("unsuccess.jsp");
            dispatcher.forward(request, response);
        }
    }

}
