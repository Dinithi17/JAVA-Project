package ticketbook;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.time.LocalDate;




@WebServlet("/bookingServlet")
public class bookingServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String passanger_name = request.getParameter("pname");
		String train_number = request.getParameter("tnum");
		int seat_count = (Integer.parseInt(request.getParameter("snum")));
		LocalDate booking_date = (LocalDate.parse(request.getParameter("bdate")));
		String destination = request.getParameter("destination");
		
		ticketDButil TicketDButil = new ticketDButil();
		
		boolean isTrue;
		
		isTrue = TicketDButil.addBooking(passanger_name, train_number, seat_count, booking_date, destination);
		
		if(isTrue == true) {
			RequestDispatcher dis = request.getRequestDispatcher("mybooking.jsp");
			dis.forward(request, response);
			
		}
		else {
			RequestDispatcher dis2 =request.getRequestDispatcher("unsuccess.jsp");
			dis2.forward(request, response);
		}
	}

}
