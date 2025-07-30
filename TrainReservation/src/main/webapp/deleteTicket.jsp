<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ include file="Header.jsp" %>
<%@page import="java.time.LocalDate" %>    
<!DOCTYPE html>
<html>
<head>
<script src="Scripts/deleteBooking.js"></script>
<link rel="stylesheet" href="styles/deleteTicket.css">
<meta charset="UTF-8">
<title>Delete your booking</title>
</head>
<body>


  <%
      String id = request.getParameter("booking_id");
      int bookId = 0;
      if(id != null && !id.isEmpty()){
    	  bookId = Integer.parseInt(id);
      }
      String name = request.getParameter("passanger_name");
      String tnumber = request.getParameter("train_number");
      String seatnumpara = request.getParameter("seat_count");
      int seatnum=0;
      if (seatnumpara != null && !seatnumpara.isEmpty()) {
          seatnum = Integer.parseInt(seatnumpara);
      }
      
      String datepara = request.getParameter("booking_date");
      LocalDate date=null;
      if (datepara != null && !datepara.isEmpty()) {
          date = LocalDate.parse(datepara);
      }
      String desti = request.getParameter("destination");
  %>
  
  <fieldset>
  <h1>Delete Booking</h1>
<form action="deleteTicketServlet" method="post">
Booking ID:
<input type="text" name="bID" value="<%=bookId%>" readonly><br>
Name :
<input type="text" name="pname" value="<%=name%>" readonly><br>
Train Number:
<input type="text" name="tnum" value="<%=tnumber%>" readonly><br>
Number of seats:
<input type="text" name="snum" value="<%=seatnum%>" readonly><br>
Booking Date:
<input type="date" name="bdate" value="<%=date%>" readonly><br> 
Destination:
<input type="text" name="destination" value="<%=desti%>" readonly><br> 
<input type="submit" value="Delete">
</form>
</fieldset>
  <%@ include file="footer.jsp" %>
</body>
</html>