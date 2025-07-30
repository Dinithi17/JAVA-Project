<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="Header.jsp" %>
<!DOCTYPE html>
<html>
<head>
    <title>Delete Message</title>
    <!-- Add Bootstrap CSS link -->
    <link rel="stylesheet" type="text/css" href="header&footer.css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <style>
        .center-container {
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }
        .confirmation-box {
            text-align: center;
            padding: 20px;
            border: 1px solid #ccc;
            border-radius: 5px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.2);
        }
    </style>
    
</head>
<body>


    <div class="center-container">
        <div class="confirmation-box">
            <h2>Delete Message</h2>
            <p>Are you sure you want to delete this message?</p>
            <form action="DeleteMessageServlet" method="post">
                <input type="hidden" name="contact_id" value="${param.contact_id}">
                <button type="submit" class="btn btn-danger">Delete</button>
                <a href="viewmessage.jsp" class="btn btn-secondary">Cancel</a>
            </form>
        </div>
    </div>
    <hr style="background-color: black; height:1px;">



    <!-- Add Bootstrap JS and jQuery scripts -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.2/dist/js/bootstrap.bundle.min.js"></script>
    <%@ include file="footer.jsp" %>
</body>
</html>

