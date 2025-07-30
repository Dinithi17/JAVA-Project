<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>

<style>


* {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        body {
            font-family: 'Poppins', sans-serif;
        }

       
        .footer {
            background-color: #333;
            color: white;
            padding: 40px 0;
            text-align: center;
            position: relative;
            bottom: 0;
            width: 100%;
        }
/* General footer styling */
.footer {
    background-color: #333; /* Dark background color */
    color: #fff; /* White text color */
    text-align: center;
    padding: 20px 0;
    position: relative;
    bottom: 0;
    width: 100%;
}

/* Social media icons */
.footer .social-icons img {
    width: 40px; /* Adjust size of social media icons */
    height: 40px; 
    margin: 0 10px; /* Space between the icons */
    transition: transform 0.3s ease;
}

.footer .social-icons img:hover {
    transform: scale(1.2); /* Hover effect: slight zoom in */
}

/* Footer links */
.footer .links {
    margin-top: 15px; /* Space above the links */
}

.footer .links a {
    color: #bbb; /* Light gray color for the links */
    text-decoration: none;
    margin: 0 15px; /* Space between links */
    font-size: 14px; /* Font size of the links */
    transition: color 0.3s ease; /* Smooth color change on hover */
}

.footer .links a:hover {
    color: yellow; /* Change color on hover */
}

        
</style>

</head>
<body>




   
</head>
<body>


<div class="footer">
    
    <div class="social-icons">
    
        <img src ="images/facebook.jpg" alt="facebook logo">
        <img src ="images/linkedIn.jpg" alt="linkedln logo">
        <img src ="images/images.jpeg" alt="instagram logo">
        <img src ="images/twitter.png" alt="twitter logo">
        
    </div>

    
    <div class="links">
        <a href="terms&condition.jsp">Terms & Conditions</a>
        <a href="contactus.jsp">Contact Us</a>
        <a href="aboutus.jsp">AboutUs</a>
    </div>

    

</body>
</html>