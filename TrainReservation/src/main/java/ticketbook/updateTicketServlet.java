package ticketbook;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.time.LocalDate;

@WebServlet("/updateTicketServlet")
public class updateTicketServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		int ID = (Integer.parseInt(request.getParameter("bID")));
		String name = request.getParameter("pname");
		String Tnumber = request.getParameter("tnum");
		int Scount = (Integer.parseInt(request.getParameter("snum")));
		LocalDate Bdate = (LocalDate.parse(request.getParameter("bdate")));
		String dest = request.getParameter("destination");
		
		ticketDButil TicketDButil = new ticketDButil();
		
		boolean isTrue;
		
		isTrue = TicketDButil.updateBooking(ID, name, Tnumber, Scount, Bdate, dest);
		
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
 