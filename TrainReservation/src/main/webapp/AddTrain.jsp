<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ include file="header2.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Add Train</title>
<link rel="stylesheet" href="styles/AddTrain.css">
</head>
<body>

<div class="container">
  <form action="AddTrainServlet" method="post">
   <h1>Add Train</h1>
   <div class="content">
     <div class="input-box">
         
         <b>Train No : </b><input type="text" name="tno" placeholder="Enter Train No" required></div>
         <div class="input-box">
         <b>Train Name : </b><input type="text" name="tname"placeholder="Enter Train Name" required></div>
         <div class="input-box">
         <b>From : </b><input type="text" name="tfrom"placeholder="Train From" required></div>
         <div class="input-box">
         <b>To : </b><input type="text" name="tto"placeholder="Train To" required></div>
         <div class="input-box">
         <b>Max Seats : </b><input type="text" name="tseats"placeholder="Max Seats" required></div>
         <div class="input-box">
         <b>Train Description : </b><br><textarea id="tdes" name="tdescription"  rows="4" cols="10"placeholder="Description" required></textarea>
   </div>
   <div class="button-container">
   <input type="submit" name="save" value="Save">
   <input type="reset" value="Reset">
   </div>
   </div>
   </form>
   
   </div>
   
   
   <footer>
   <%@ include file="AdminFooter.jsp" %>
   </footer>

</body>
</html>