package ticketbook;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;




@WebServlet("/deleteTicketServlet")
public class deleteTicketServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		int b_ID = (Integer.parseInt(request.getParameter("bID")));
		
		ticketDButil TicketDButil = new ticketDButil();
		
		boolean isTrue;
		
		isTrue = TicketDButil.deleteBooking(b_ID);
		
		if(isTrue == true) {
			RequestDispatcher dis = request.getRequestDispatcher("mybooking.jsp");
			dis.forward(request, response);
		}
		else {
			RequestDispatcher dis =request.getRequestDispatcher("unsuccess.jsp");
			dis.forward(request, response);
		}
	}

}
