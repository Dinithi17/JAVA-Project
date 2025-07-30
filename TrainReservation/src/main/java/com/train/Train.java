package com.train;

public class Train {
	
	private String TrainNo;
	private String TrainName;
	private String TrainFrom;
	private String TrainTo;
	private int TrainSeats;
	private String TrainDescription;
	
	

	public Train(String trainNo, String trainName, String trainFrom, String trainTo,
			int trainSeats,String trainDescription) {
		TrainNo = trainNo;
		TrainName = trainName;
		TrainFrom = trainFrom;
		TrainTo = trainTo;
		TrainSeats = trainSeats;
		TrainDescription=trainDescription;
	}

	public String getTrainNo() {
		return TrainNo;
	}

	public String getTrainName() {
		return TrainName;
	}

	public String getTrainFrom() {
		return TrainFrom;
	}

	public String getTrainTo() {
		return TrainTo;
	}

	public int getTrainSeats() {
		return TrainSeats;
	}
	
	public String getTrainDescription() {
		return TrainDescription;
	}

	

}
