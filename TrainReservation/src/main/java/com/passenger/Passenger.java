package com.passenger;

public class Passenger {
	private int Id;
	private String name;
	private String email;
	private String phone_no;
	private String user_type;
	private String username;
	private String password;
	public Passenger(int id, String name, String email, String phone_no, String user_type, String username, String password) {
		
		Id = id;
		this.name = name;
		this.email = email;
		this.phone_no = phone_no;
		this.user_type = user_type;
		this.username = username;
		this.password = password;
		
		
		
	}
	public int getId() {
		return Id;
	}
	
	public String getName() {
		return name;
	}
	
	public String getEmail() {
		return email;
	}
	
	public String getPhone_no() {
		return phone_no;
	}
	
	public String getUser_type() {
		return user_type;
	}
	
	public String getUsername() {
		return username;
	}
	
	public String getPassword() {
		return password;
	}
	
	

}
