package com.passenger;

import java.util.List;

public interface User {
      
	boolean checkEmail(String email);
	 boolean insertUser(String name,String email,String p_no,String user_type,String U_name,String hashedPassword);
	 boolean checkUserExist(String Email, String passw);
	 String getUserType(String Email);
	 boolean UpdateUser(String id,String Name,String Email,String PhoneNo,String user_type,String Username);
	 List<Passenger> getUserDetails(String email);
	 boolean DeleteUser(String id);
	 
}
