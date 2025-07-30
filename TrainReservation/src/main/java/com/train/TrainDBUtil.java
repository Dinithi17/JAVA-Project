package com.train;

import java.sql.Connection;
import java.sql.Statement;


public class TrainDBUtil implements TrainInterface{
	
	private static Connection con=null;
	private static Statement state=null;
	
	
	public  boolean addtrain(String tno,String tname,String tfrom,String tto,int tseats,String tdescription) {
		
		boolean isSuccess= false;
		
		try {
			con=DBConnect.getConnection();
			state =con.createStatement();
			String sql="insert into train1 values ('"+tno+"','"+tname+"','"+tfrom+"','"+tto+"','"+tseats+"','"+tdescription+"')";
			int rs=state.executeUpdate(sql);
			
			if(rs>0) {
				isSuccess=true;
			}else {
				isSuccess=false;
			}
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		
		return isSuccess;
	}
	
	public  boolean updatetrain(String tno,String tname,String tfrom,String tto,int tseats,String tdescription) {
		
		boolean isSuccess=false;
		
		try {
			con=DBConnect.getConnection();
			state=con.createStatement();
			String sql="update train1 set TrainNo='"+tno+"',TrainName='"+tname+"',TrainFrom='"+tfrom+"',TrainTo='"+tto+"',TrainSeats='"+tseats+"',TrainDescription='"+tdescription+"'"
					+"where TrainNo='"+tno+"'";
			int rs=state.executeUpdate(sql);
			
			if(rs>0) {
				isSuccess=true;
			}else {
				isSuccess=false;
			}
		}catch(Exception e) {
			e.printStackTrace();
		}
		return isSuccess;
	}
	
	public  boolean deletetrain(String tno) {
		boolean isSuccess=false;
		
		try {
			con=DBConnect.getConnection();
			state=con.createStatement();
			String sql="delete from train1 where TrainNo= '"+tno+"'";
			int rs=state.executeUpdate(sql);
			
			if(rs>0) {
				isSuccess=true;
			}else {
				isSuccess=false;
			}
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		return isSuccess;
	}

}


