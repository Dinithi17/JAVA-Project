<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ include file="header2.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Update Train</title>
<link rel="stylesheet" href="styles/UpdateTrain.css">
</head>
<body>

<div class="container">
  <form action="UpdateTrainServlet" method="post">
   <h1>Update Train</h1>
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
   <b>Train Name : </b><input type="text" name="tname" value="<%=tname%>"></div>
   <div class="input-box">
   <b>From : </b><input type="text" name="tfrom" value="<%=tfrom%>"></div>
   <div class="input-box">
   <b>To : </b><input type="text" name="tto" value="<%=tto%>"></div>
   <div class="input-box">
   <b>Max Seats : </b><input type="text" name="tseats" value="<%=tseats%>"></div>
   <div class="input-box">
   <b>Train Description : </b><br><textarea id="tdes" name="tdescription" rows="4" cols="50"><%=tdescription%></textarea></div>
   
   <div class="button-container">
   <input type="submit" name="save" value="Save Changes">
   </div>
   </div>
   </form>
   </div>
   
   <footer>
   <%@ include file="AdminFooter.jsp" %>
   </footer>

</body>
</html>