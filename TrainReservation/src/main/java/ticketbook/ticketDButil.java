package ticketbook;

import java.sql.Connection;
import java.sql.Statement;
import java.time.LocalDate;



public class ticketDButil implements Ticket {

	private static Connection con=null;
	private static Statement state=null;
	
	public  boolean addBooking(String passanger_name, String train_number, int seat_count, LocalDate booking_date, String destination) {
		
		boolean isSuccess = false;
		
		try {
			con = DBconnect.getConnection();
			state = con.createStatement();
			String sql = "insert into ticket_booking values(0,'"+passanger_name+"','"+train_number+"','"+seat_count+"','"+booking_date+"','"+destination+"')";
			int rs=state.executeUpdate(sql);
			
			if(rs>0) {
				isSuccess=true;
			}
			else {
				isSuccess = false;
			}
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		return isSuccess;
	}
	
	public  boolean updateBooking(int ID,String name,String Tnumber,int Scount,LocalDate Bdate,String dest) {
		
		
		boolean isSuccess = false;
		
		try {
			con = DBconnect.getConnection();
			state = con.createStatement();
			String sql = "update ticket_booking set passanger_name='"+name+"',train_number='"+Tnumber+"',seat_count='"+Scount+"',booking_date='"+Bdate+"',destination='"+dest+"'"
			              +"where booking_id='"+ID+"'";
			
			int rs=state.executeUpdate(sql);
			
			if(rs>0) {
				isSuccess=true;
			}
			else {
				isSuccess = false;
			}
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		
		return isSuccess ;
	}
	
	public  boolean deleteBooking(int b_ID) {
		
		boolean isSuccess = false;
		
		try {
			con = DBconnect.getConnection();
			state = con.createStatement();
			String sql ="delete from ticket_booking where booking_id='"+b_ID+"'";
			int rs = state.executeUpdate(sql);
			
			if(rs>0) {
				isSuccess=true;
			}
			else {
				isSuccess = false;
			}
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		
		return isSuccess ;
	}
}
