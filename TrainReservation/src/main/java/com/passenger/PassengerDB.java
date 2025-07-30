package com.passenger;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import org.mindrot.jbcrypt.BCrypt;



public class PassengerDB implements User {
	
	public  boolean checkEmail(String email)
	{
		
		boolean result = false;
		
		String url = "jdbc:mysql://localhost:3306/user";
		String user = "root";
		String password1 = "tharushi@2001";
		
		try {
			Class.forName("com.mysql.jdbc.Driver");

			Connection con = DriverManager.getConnection(url, user, password1);
			Statement stat = con.createStatement();
			String sql = "select * from passenger where email='"+email+"'";
			ResultSet rs = stat.executeQuery(sql);
			
			if(rs.next())
			{
				result = true;
			}
			else
			{
				result = false;
			}
			
			
		}catch(Exception e)
		{
			e.printStackTrace();
		}
		
		return result;
	}
	
	
	public boolean insertUser(String name,String email,String p_no,String user_type,String U_name,String hashedPassword)
	{
		boolean issuccess = false;
		
		
		if(!checkEmail(email))
		{
		  String url = "jdbc:mysql://localhost:3306/user";
		  String user = "root";
		  String password1 = "tharushi@2001";
		
		try {
			Class.forName("com.mysql.jdbc.Driver");

			Connection con = DriverManager.getConnection(url, user, password1);
			Statement stat = con.createStatement();
			String sql = "insert into passenger values (0,'"+name+"','"+email+"','"+p_no+"','"+user_type+"','"+U_name+"','"+hashedPassword+"')";

			int rs = stat.executeUpdate(sql);
			
			if(rs>0)
			{
				issuccess = true;
			}
			
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		}else
			
		{
			issuccess = false;
		}
		
		return issuccess;
	}
	
	public boolean checkUserExist(String Email, String passw)
	{
		boolean isvalid=false;
		
		String url = "jdbc:mysql://localhost:3306/user";
		String user = "root";
		String password1 = "tharushi@2001";
		
		try {
			Class.forName("com.mysql.jdbc.Driver");

			Connection con = DriverManager.getConnection(url, user, password1);
			Statement stat = con.createStatement();
			String sql = "select password from passenger where email='"+Email+"'";
			ResultSet rs = stat.executeQuery(sql);
			
			if(rs.next())
			{
				String storedHashedPassword = rs.getString("password");
				
				if(BCrypt.checkpw(passw, storedHashedPassword))
				{
					isvalid = true;
				}
				else
				{
					isvalid = false;
				}
				
			}
				
		}catch(Exception e)
		{
			e.printStackTrace();
		}
		
		
		return isvalid;
	}
	
	public String getUserType(String Email)
	{
		String Usertype = null;
		
		String url = "jdbc:mysql://localhost:3306/user";
		String user = "root";
		String password1 = "tharushi@2001";
		
		try {
			Class.forName("com.mysql.jdbc.Driver");

			Connection con = DriverManager.getConnection(url, user, password1);
			Statement stat = con.createStatement();
			String sql = "select user_type from passenger where email='"+Email+"'";
			ResultSet rs = stat.executeQuery(sql);
			
			if(rs.next())
			{
				Usertype = rs.getString("user_type");
			}
			
			
		}catch(Exception e)
		{
			e.printStackTrace();
		}
		
		
		
		return Usertype;
	}
	
	
	public boolean UpdateUser(String id,String Name,String Email,String PhoneNo,String user_type,String Username)
	{
		
		int convertID = Integer.parseInt(id);
		
		boolean issuccess = false;
		
		String url = "jdbc:mysql://localhost:3306/user";
		String user = "root";
		String password1 = "tharushi@2001";
		
		try {
			Class.forName("com.mysql.jdbc.Driver");

			Connection con = DriverManager.getConnection(url, user, password1);
			Statement stat = con.createStatement();
			String sql = "UPDATE passenger SET name='" + Name + "', email='" + Email + "', `phone no`='" + PhoneNo + "',user_type='"+user_type+"', username='" + Username + "' WHERE id='" + convertID + "'";

			int rs = stat.executeUpdate(sql);
			
			if(rs>0)
			{
				issuccess = true;
			}
			
			else
			{
				issuccess = false;
			}
			
			
		}catch(Exception e)
		{
			e.printStackTrace();
		}
		
		return issuccess;
	}
	
	public List<Passenger> getUserDetails(String email)
	{    
		
		
		ArrayList<Passenger> passeng = new ArrayList<Passenger>();
		
		String url = "jdbc:mysql://localhost:3306/user";
		String user = "root";
		String password1 = "tharushi@2001";
		
		try {
			
			Class.forName("com.mysql.jdbc.Driver");

			Connection con = DriverManager.getConnection(url, user, password1);
			Statement stat = con.createStatement();
			String sql = "select * from passenger where email = '"+email+"'";
			ResultSet rs = stat.executeQuery(sql);
			
			while(rs.next())
			{
				int ID = rs.getInt("id");
				String Name = rs.getString("name");
				String Email = rs.getString("email");
				String Phone_No = rs.getString("phone no");
				String user_type = rs.getString("user_type");
				String UserName = rs.getString("username");
				String pass = rs.getString("password");
				
				Passenger p2 = new Passenger(ID,Name,Email,Phone_No,user_type,UserName,pass);
				
				passeng.add(p2);
				
			}
			
			
		}catch(Exception e)
		{
			e.printStackTrace();
		}
		
		
		return passeng;
	}
	
	public boolean DeleteUser(String id)
	{
		int convID = Integer.parseInt(id);
	
	boolean issuccess = false;
	
	String url = "jdbc:mysql://localhost:3306/user";
	String user = "root";
	String password1 = "tharushi@2001";
	
	try {
		
		Class.forName("com.mysql.jdbc.Driver");

		Connection con = DriverManager.getConnection(url, user, password1);
		Statement stat = con.createStatement();
		String sql = "DELETE FROM passenger WHERE id = '" + convID + "'";

		int rs = stat.executeUpdate(sql);
		
		if(rs>0)
		{
			issuccess = true;
		}
		else
		{
			issuccess = false;
		}
				
		
	}catch(Exception e)
	{
		e.printStackTrace();
	}
	
	
	return issuccess;
	}
	
	
	
	 
}


