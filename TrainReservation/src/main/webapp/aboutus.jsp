<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ include file="Header.jsp" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>About Us</title>
    <!-- Google Fonts -->
    <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@400;700&display=swap" rel="stylesheet">
    <!-- Font Awesome for Icons -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
    <style>
    body {
    font-family: Arial, sans-serif;
    background-color: #f4f4f9;
    margin: 0;
    padding: 0;
    background-image: url('images/train1.jpg');
    background-size: cover;
    background-position: center;
    background-repeat:no-repeat;
    
    background-attachment: fixed;

}
    .container3 {
      width: 80%;
    margin: 20px auto;
    background-color: rgba(255, 255, 255, 0.8);
	box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
    padding: 20px;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
    border-radius: 10px;
    line-height: 1.6;
    margin-top:10%;
    
    border-style: solid;
  border-color: black;
    
}

/* Hover effect on container */
.container:hover {
    box-shadow: 0 6px 12px rgba(0, 0, 0, 0.2);
}
    

/* Heading styles */
h1 {
    text-align: center;
    color: #1976D2;
    font-size: 2.5em;
    margin-bottom: 20px;
    text-shadow: 2px 2px 4px rgba(0, 0, 0, 0.2);
}

/* Paragraph styles */
p {
    font-size: 1.2em;
    line-height: 1.8em;
    margin-bottom: 20px;
    text-align: center; 
}</style>
</head>
<body>

<div class="container3">
    <h1>About Us</h1>
    <p>
        Welcome to QuickRailTicket Online Train Reservation System where you are served with extremely creative way of Ticket Booking via Online without any problem. 
        That is why we make booking train tickets as straightforward as possible, providing an easy to use interface and real time availability. 
        You can use our system to look up trains, timetables and book tickets in few clicks for whether you are doing short journeys or long hauls. 
        Every effort to ensure and maintain a seamless experience for every traveler in the form of convenience, safety and customer satisfaction. 
       
    </p>
    <p>
         Our team works tirelessly to make the platform better, so that train travel can truly be easier for everyone.


</div>
<br><br>
<%@ include file="footer.jsp" %>
</body>
</html>
