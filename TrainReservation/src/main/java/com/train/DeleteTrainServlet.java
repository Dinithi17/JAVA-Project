package com.train;

import java.io.IOException;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/DeleteTrainServlet")
public class DeleteTrainServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String trainno=request.getParameter("tno");
		
		TrainDBUtil trainDB = new TrainDBUtil();
		
		boolean isTrue;
		
		isTrue=trainDB.deletetrain(trainno);
		
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
