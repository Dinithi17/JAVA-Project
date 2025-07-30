<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@ include file="Header.jsp" %>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="styles/mybooking.css">
<meta charset="UTF-8">
<title>Your bookings</title>
</head>
<body>
    <div class = "container1">
    <h1>Your Bookings</h1>
    <table border = 2>
       <tr>
         <th>Booking ID</th>
         <th>Name</th>
         <th>Train Number</th>
         <th>Seat Count</th>
         <th>Booking Date</th>
         <th>Destination</th>
         <th>Option</th>
       </tr>
       <%@page import="java.sql.*" %>
       <%@page import="ticketbook.DBconnect" %>
       <%try
       {
    	   Connection con = DBconnect.getConnection();
		   Statement state = con.createStatement();
		   String sql="select*from ticket_booking";
		   ResultSet rs = state.executeQuery(sql);
		   while(rs.next())
		   {
			 %>
			 <c:set var = "bId" value ="<%= rs.getString(\"booking_id\") %>"></c:set>
			 <c:set var = "pName" value ="<%= rs.getString(\"passanger_name\") %>"></c:set>
			 <c:set var = "tName" value ="<%= rs.getString(\"train_number\") %>"></c:set>
			 <c:set var = "sNumber" value ="<%= rs.getString(\"seat_count\") %>"></c:set>
			 <c:set var = "bDate" value ="<%= rs.getString(\"booking_date\") %>"></c:set>
			 <c:set var = "dest" value ="<%= rs.getString(\"destination\") %>"></c:set>
			 
			 <tr>
			 <td><c:out value = "${bId}"></c:out></td>
			 <td><c:out value = "${pName}"></c:out></td>
			 <td><c:out value = "${tName}"></c:out></td>
			 <td><c:out value = "${sNumber}"></c:out></td>
			 <td><c:out value = "${bDate}"></c:out></td>
			 <td><c:out value = "${dest}"></c:out></td>
			 
			 
			 <c:url value = "updateTicket.jsp" var = "ticketupdate">
			 <c:param name="booking_id" value = "${bId}"></c:param>
			 <c:param name="passanger_name" value = "${pName}"></c:param>
			 <c:param name="train_number" value = "${tName}"></c:param>
			 <c:param name="seat_count" value = "${sNumber}"></c:param>
			 <c:param name="booking_date" value = "${bDate}"></c:param>
			 <c:param name="destination" value = "${dest}"></c:param>
			 </c:url>
			 
			 <td><a href = "${ticketupdate}"><input type = "button" name="tUpdate" value="update" id="btn1"></a>
			 
			 <c:url value="deleteTicket.jsp" var = "ticketdelete">
			 <c:param name="booking_id" value = "${bId}"></c:param>
			 <c:param name="passanger_name" value = "${pName}"></c:param>
			 <c:param name="train_number" value = "${tName}"></c:param>
			 <c:param name="seat_count" value = "${sNumber}"></c:param>
			 <c:param name="booking_date" value = "${bDate}"></c:param>
			 <c:param name="destination" value = "${dest}"></c:param>
			 </c:url>
			 
			 <a href="${ticketdelete}"><input type="button" name="tDelete" value="delete" id="btn2"></a></td>
			 </tr>
			 <%} 
		   }catch(Exception e)
       {
       }%>
    
    </table>
    </div>
    <%@ include file="footer.jsp" %>
</body>
</html>