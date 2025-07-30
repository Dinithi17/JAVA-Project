package com.train;

import java.io.IOException;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/UpdateTrainServlet")
public class UpdateTrainServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String trainno=request.getParameter("tno");
		String trainname=request.getParameter("tname");
		String trainfrom=request.getParameter("tfrom");
		String trainto=request.getParameter("tto");
		int maxseats=(Integer.parseInt(request.getParameter("tseats")));
		String traindescription=request.getParameter("tdescription");
		
		TrainDBUtil trainDB = new TrainDBUtil();
		
		boolean isTrue;
		
		isTrue=trainDB.updatetrain(trainno, trainname, trainfrom, trainto, maxseats,traindescription);
		
		if(isTrue==true) {
			RequestDispatcher dis=request.getRequestDispatcher("TrainList.jsp");
			dis.forward(request, response);
			
		}
		else {
			RequestDispatcher dis2=request.getRequestDispatcher("unsuccess.jsp");
			dis2.forward(request, response);
		}
	}

}
