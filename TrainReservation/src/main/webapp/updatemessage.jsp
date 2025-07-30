<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ include file="Header.jsp" %>
<!DOCTYPE html>
<html>
<head>
    <title>Update Message</title>
    
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href="header&footer.css">
    <style>
        body {
            background-color: #fff;
        }
        
        .form-container {
            background-color: #fff;
            padding: 20px;
            border-radius: 5px;
            box-shadow: 0 0 5px rgba(0, 0, 0, 0.2);
        }
    </style>
</head>
<body>

<% 
			String contact_id=request.getParameter("contact_id");
			String client_id=request.getParameter("client_id");
			String name=request.getParameter("name");
			
			String subject=request.getParameter("subject");
			String message=request.getParameter("message");
			
			
			%>
			
    <div class="container">
        <h2>Update Messages</h2>
        <form action="updatemessagecustservlet" method="post">
    <div class="form-group">
        <label for="message_id">Message ID:</label>
        <input type="text" class="form-control" id="contact_id" name="contact_id" value="<%=contact_id%>" readonly>
    </div>
    <div class="form-group">
        <input type="hidden" class="form-control" id="client_id" name="client_id" value="<%=client_id%>" readonly>
    </div>
    <div class="form-group">
        <label for="name">Name:</label>
        <input type="text" class="form-control" id="name" name="name" value="<%=name%>">
    </div>
    <div class="form-group">
    <label for="email">Email:</label>
    <input type="email" class="form-control" id="email" name="email" value="<%=email%>" required>
    <small id="emailError" style="color:red; display:none;">Please enter a valid email address.</small>
</div>

    <div class="form-group">
        <label for="subject">Subject:</label>
        <input type="text" class="form-control" id="subject" name="subject" value="<%=subject%>">
    </div>
    <div class="form-group">
        <label for="message">Message:</label>
        <input type="text" class="form-control" id="message" name="message" value="<%=message%>">
    </div>
    <button type="submit" class="btn" style="background-color: #038a6a; color: #fff; padding: 10px 20px; width: 100%;">Update</button>
</form>

    </div>
    
    <hr style="background-color: black;height:1px;">
    
   


    <!-- Add Bootstrap JS and jQuery scripts -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.2/dist/js/bootstrap.bundle.min.js"></script>
    <%@ include file="footer.jsp" %>
</body>
</html>
