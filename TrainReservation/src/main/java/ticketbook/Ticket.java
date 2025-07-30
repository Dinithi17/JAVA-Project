package ticketbook;

import java.time.LocalDate;

public interface Ticket {
   
	boolean addBooking(String passanger_name, String train_number, int seat_count, LocalDate booking_date, String destination);
	boolean updateBooking(int ID,String name,String Tnumber,int Scount,LocalDate Bdate,String dest);
	boolean deleteBooking(int b_ID);
	
}
