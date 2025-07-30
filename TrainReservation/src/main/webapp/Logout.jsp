<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
   HttpSession Session = request.getSession(false);
   if(session == null || session.getAttribute("user") == null) {
	    response.sendRedirect("Login.jsp");
   }
   
   
%>

</body>
</html>