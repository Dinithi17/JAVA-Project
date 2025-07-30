<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ include file="Header.jsp" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Contact Us</title>
    <style>
body{
   background-color: #f4f4f9;
   background-image: url('images/train1.jpg');
    background-size: cover;
    background-position: center;
    background-repeat:no-repeat;
    height: 100vh;
    background-attachment: fixed;
}
/* Heading styles */
h1 {
    text-align: center;
    color: #1976D2;
    font-size: 2.5em;
    margin-bottom: 20px;
    text-shadow: 2px 2px 4px rgba(0, 0, 0, 0.2);
}

/* Form labels */
label {
    font-weight: bold;
    display: block;
    margin-top: 15px;
    margin-bottom: 5px;
}

/* Input fields and textarea styles */
input[type="text"], input[type="email"], textarea {
    width: 100%;
    padding: 12px;
    margin-bottom: 15px;
    border: 1px solid #ccc;
    border-radius: 6px;
    box-sizing: border-box;
    transition: border 0.3s ease;
}

/* Change border color on focus */
input[type="text"]:focus, input[type="email"]:focus, textarea:focus {
    border-color: #6E8EF7;
    outline: none;
}

/* Submit button */
input[type="submit"] {
    background-color: #1976D2;
    color: white;
    padding: 15px 20px;
    border: none;
    border-radius: 8px;
    cursor: pointer;
    font-size: 1.2em;
    width: 100%;
    transition: background-color 0.3s ease, transform 0.2s ease;
}

/* Hover effect on submit button */
input[type="submit"]:hover {
    background-color: #1976D2;
    transform: scale(1.05);
}
.container5{
        width: 50%;
    margin: 20px auto;
    background-color: rgba(255, 255, 255, 0.8);
	box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
    padding: 20px;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
    border-radius: 10px;
    line-height: 1.6;
    margin-top:8%;
    border-style: solid;
  border-color: black;
}
/* Container hover effect */
.container5:hover {
    box-shadow: 0 6px 12px rgba(0, 0, 0, 0.2);
}

/* Responsive styling for mobile */
@media (max-width: 768px) {
    .container {
        width: 90%;
    }
    
    h1 {
        font-size: 2em;
    }
    
    input[type="submit"] {
        font-size: 1em;
    }
}</style>
</head>
<body>

    <div class="container5">
    <br>
        <h1>Contact Us</h1>
        <form action="ContactServlet" method="post">
            <label for="name">Name:</label>
            <input type="text" id="name" name="name" required>
            
            <label for="email">Email:</label>
            <input type="email" id="email" name="email" required>
            
            <label for="subject">Subject:</label>
            <input type="text" id="subject" name="subject" required>
            
            <label for="message">Message:</label>
            <textarea id="message" name="message" rows="5" required></textarea>
            
            <input type="submit" value="Send Message">
        </form>
    </div>
    <br>
    <%@ include file="footer.jsp" %>
</body>
</html>
