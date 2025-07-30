package com.train;

public interface TrainInterface {
	
	boolean addtrain(String tno,String tname,String tfrom,String tto,int tseats,String tdescription);
	boolean updatetrain(String tno,String tname,String tfrom,String tto,int tseats,String tdescription);
	 boolean deletetrain(String tno);
}
