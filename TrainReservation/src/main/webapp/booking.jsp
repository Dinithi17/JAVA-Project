<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ include file="Header.jsp" %>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="styles/booking.css">
<meta charset="UTF-8">
<title>Book Your Ticket</title>

</head>

<body>

<fieldset>
<h1>Book Your Ticket</h1>
<form action="bookingServlet" method="post">
Name :
<input type="text" name="pname" required><br>
Train Number:
<input type="text" name="tnum" required><br>
Number of seats:
<input type="text" name="snum" required><br>
Booking Date:
<input type="date" name="bdate" required><br> 
Destination:
<input type="text" name="destination" required><br>

<input  type="submit" value="Submit">
<input type="reset" value="Reset">
</form>
</fieldset>
<%@ include file="footer.jsp" %>
</body>
</html>