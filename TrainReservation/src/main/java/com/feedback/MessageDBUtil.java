package com.feedback;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import com.client.DBConnection;
import com.mysql.jdbc.PreparedStatement;
import com.train.DBConnect;

public class MessageDBUtil {
	
	private static boolean isSuccess;
	private static Connection con=null;
	private static Statement stmt=null;
	private static ResultSet rs=null;
	

	public static List<Message> getMessageDetails(String client_id) {
	    List<Message> message1 = new ArrayList<>();

	    try (Connection con = DBConnect.getConnection();
	         java.sql.PreparedStatement ps = con.prepareStatement("SELECT * FROM messagedata WHERE cid = ?")) {
	        ps.setString(1, client_id);

	        try (ResultSet rs = ps.executeQuery()) {
	            while (rs.next()) {
	            	int contact_id = rs.getInt("contact_id"); // Replace with the actual column name
	                String c_id = rs.getString("cid");
	                String name = rs.getString("name");
	                String email = rs.getString("email");
	                String subject = rs.getString("subject");
	                String message = rs.getString("message");

	                Message b = new Message(contact_id, c_id, name, email, subject, message);
	                message1.add(b);
	            }
	        }
	    } catch (SQLException e) {
	        e.printStackTrace();
	    }

	    return message1;
	}
	
	public static List<Message> getAllMessage() {
	    List<Message> message1 = new ArrayList<>();

	    try (Connection con = DBConnect.getConnection();
	         Statement stmt = con.createStatement();
	         ResultSet rs = stmt.executeQuery("SELECT * FROM messagedata")) {
	        while (rs.next()) {
	        	int contact_id = rs.getInt("contact_id");
	            String client_id = rs.getString("client_id");
	            String name = rs.getString("name");
                String email = rs.getString("email");
                String subject = rs.getString("subject");
                String message = rs.getString("message");

	            Message b = new Message(contact_id, client_id, name, email, subject, message);
	            message1.add(b);
	        }
	    } catch (SQLException e) {
	        e.printStackTrace();
	    }

	    return message1;
	}



public static boolean newmessage(String client_id, String name,String email,String subject,String message) {
	
	 isSuccess=false;

	
	
	try {
		con=DBConnect.getConnection();
		stmt=con.createStatement();
		
		
		
		String sql="insert into messagedata values(0,'"+client_id+"','"+name+"','"+email+"','"+subject+"','"+message+"');";
		int rs=stmt.executeUpdate(sql);
		
		if(rs>0) {
			isSuccess=true;
		}
		else {
			isSuccess=false;
		}
	} catch (Exception e) {
		e.printStackTrace();
	}
	
	
	
	return isSuccess;
	
	
}

public static boolean updateMessage(String contact_id, String client_id, String name, String email, String subject, String message) {
    boolean isSuccess = false;

    try {
        con = DBConnect.getConnection();

        String sql = "UPDATE messagedata SET client_id=?, name=?, email=?, subject=?, message=? WHERE contact_id=?";
        PreparedStatement pstmt = (PreparedStatement) con.prepareStatement(sql);
        
        // Set the parameters for the prepared statement
        pstmt.setString(1, client_id);
        pstmt.setString(2, name);
        pstmt.setString(3, email);
        pstmt.setString(4, subject);
        pstmt.setString(5, message);
        pstmt.setString(6, contact_id);

        int rowsUpdated = pstmt.executeUpdate();

        if (rowsUpdated > 0) {
            isSuccess = true;
        } else {
            isSuccess = false;
        }

    } catch (SQLException e) {
        e.printStackTrace();
        // Handle the exception, possibly log it, and provide user feedback
    } finally {
        
        
    }

    return isSuccess;
}





public static boolean deletemessage(String conid) {
    boolean isSuccess = false;

    try {
        con = DBConnect.getConnection();
        String sql = "DELETE FROM messagedata WHERE contact_id = ?";
        PreparedStatement pstmt = (PreparedStatement) con.prepareStatement(sql);

        int convId = Integer.parseInt(conid);
        pstmt.setInt(1, convId);

        int rowsDeleted = pstmt.executeUpdate();

        if (rowsDeleted > 0) {
            isSuccess = true;
        }
    } catch (SQLException e) {
        e.printStackTrace();
        // Handle the exception, possibly log it, and provide user feedback
    } finally {
        
    }

    return isSuccess;
}


}
