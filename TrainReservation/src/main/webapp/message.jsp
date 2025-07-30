<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ include file="Header.jsp" %>
<!DOCTYPE html>
<html>
<head>
    <title>Feedback</title>
    <!-- Add Bootstrap CSS link -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href="header&footer.css">
</head>
<body>


<% 
			String id=request.getParameter("id");
			
			%>
    <div class="container">
    <h2>Feedback</h2>
    <form action="MessageServlet" method="post">
        <div class="form-group">
            <input type="hidden" class="form-control" id="client_id" name="client_id" value="1" readonly>
        </div>
        <div class="form-group">
            <label for="name">Name:</label>
            <input type="text" class="form-control" id="name" name="name" required>
        </div>
       <div class="form-group">
    <label for="email">Email:</label>
    <input type="email" class="form-control" id="email" name="email" value="<%= email != null ? email : "" %>" required readonly>
    <small id="emailError" style="color:red; display:none;">Please enter a valid email address.</small>
</div>

        <div class="form-group">
            <label for="subject">Subject:</label>
            <input type="text" class="form-control" id="subject" name="subject" required>
        </div>
        <div class="form-group">
            <label for="message">Message:</label>
            <input type="text" class="form-control" id="message" name="message" required>
        </div>
        <button type="submit" class="btn" style="background-color: #038a6a; color: #fff; padding: 10px 20px; width: 100%;">Submit</button>
    </form>
</div>

    <hr style="background-color: black;height:1px;">
    
    <div class="container mt-4"> <%-- Add this section for viewing messages --%>
            <p>Want to manage your sent messages? <a href="viewmessage.jsp">View Your Messages</a></p>
        </div>


    <!-- Add Bootstrap JS and jQuery scripts -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.2/dist/js/bootstrap.bundle.min.js"></script>
    <%@ include file="footer.jsp" %>
</body>
</html>
