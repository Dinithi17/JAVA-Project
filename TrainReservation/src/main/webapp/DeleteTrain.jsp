<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ include file="header2.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="styles/DeleteTrain.css">
</head>
<body>

<div class="container">
  <form action="DeleteTrainServlet" method="post">
   <h1>Delete Train</h1>
   <div class="content">
     <div class="input-box">
   <%
     String tno=request.getParameter("TrainNo");
     String tname=request.getParameter("TrainName");
     String tfrom=request.getParameter("TrainFrom");
     String tto=request.getParameter("TrainTo");
     int tseats=(Integer.parseInt(request.getParameter("TrainSeats")));
     String tdescription=request.getParameter("TrainDescription");
   %>
   <b>Train No : </b><input type="text" name="tno" value="<%=tno%>"readonly></div>
   <div class="input-box">
   <b>Train Name : </b><input type="text" name="tname" value="<%=tname%>"readonly></div>
   <div class="input-box">
   <b>From : </b><input type="text" name="tfrom" value="<%=tfrom%>"readonly></div>
   <div class="input-box">
   <b>To : </b><input type="text" name="tto" value="<%=tto%>"readonly></div>
   <div class="input-box">
   <b>Max Seats : </b><input type="text" name="tseats" value="<%=tseats%>"readonly></div>
   <div class="input-box">
   <b>Train Description : </b><br><textarea id="tdes" name="tdescription"rows="4" cols="50"readonly><%=tdescription%></textarea></div>
   <div class="button-container">
   <input type="submit" name="delete" value="Delete Train">
   </div>
   </div>
   </form>
   </div>
<footer>
<%@ include file="AdminFooter.jsp" %>
   </footer>
</body>
</html>