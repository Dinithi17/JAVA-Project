<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%@page import="java.time.LocalDate" %>
    <%@ include file="Header.jsp" %>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="styles/updateTicket.css">
<meta charset="UTF-8">
<title>Update your booking</title>
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
<h1>Update Booking</h1>
<form action="updateTicketServlet" method="post">
Booking ID:
<input type="text" name="bID" value="<%=bookId%>" readonly><br>
Name :
<input type="text" name="pname" value="<%=name%>"><br>
Train Number:
<input type="text" name="tnum" value="<%=tnumber%>"><br>
Number of seats:
<input type="text" name="snum" value="<%=seatnum%>"><br>
Booking Date:
<input type="date" name="bdate" value="<%=date%>"><br> 
Destination:
<input type="text" name="destination" value="<%=desti%>"><br> 
<input type="submit" value="Update">
</form>
</fieldset>
<%@ include file="footer.jsp" %>
</body>
</html>