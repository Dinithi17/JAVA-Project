<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    
    <%@ page session="true" %>
    <%@ page import="java.sql.*" %>
    
    <%@ include file="header2.jsp" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Useraccount</title>


        <link rel="preconnect" href="https://fonts.googleapis.com">

        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>

        <link href="https://fonts.googleapis.com/css2?family=Inter:wght@100;300;400;700;900&display=swap" rel="stylesheet">
                           
        <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/CSS/bootstrap.min.css">
        
        <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/CSS/bootstrap-icons.css">

        <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/CSS/StyleUseraccount.css">

</head>
<body>
    
    <section class="account-section">
    
    <div class="account-container">
    
   
	
	<% 
    
	if(email!=null)
	{   
		// fetch the user details using email
		
		String url = "jdbc:mysql://localhost:3306/user";
		String user = "root";
		String password1 = "tharushi@2001";
		
		try
		{
			Class.forName("com.mysql.jdbc.Driver");

			Connection con = DriverManager.getConnection(url, user, password1);
			Statement stat = con.createStatement();
			String sql = "select * from passenger where email = '"+email+"'";
			ResultSet rs = stat.executeQuery(sql);
			
			while(rs.next())
			{
				%>
				
				 <c:set var = "Id" value="<%= rs.getInt(\"id\") %>"></c:set>
                 <c:set var = "name" value = "<%= rs.getString(\"name\") %>"></c:set>
                 <c:set var = "email" value = "<%= rs.getString(\"email\") %>"/>
                 <c:set var = "phone_no" value = "<%= rs.getString(\"phone no\") %>"/>
                  <c:set var = "usertype" value = "<%= rs.getString(\"user_type\") %>"/>
                  <c:set var = "username" value = "<%= rs.getString(\"username\") %>"/>
                  <c:set var = "pass" value = "<%= rs.getString(\"password\") %>"/>
       
				
				  <h2>User Account</h2>
     
                  <p><b>Id : </b>        ${Id}</p>
       
                  <p><b>Name : </b> ${name}</p>
 
                  <p><b>Email : </b> ${email}</p>
      
                  <p><b>Phone number : </b> ${phone_no}</p>
      
                  <p><b>User Type : </b> ${usertype}</p>
 
                  <p><b>User Name : </b>${username}</p>
				
	<c:url value="Updateprofile.jsp" var="passenUpdate">
     <c:param name = "Id" value="${Id}"/>
     <c:param name = "name" value="${name}"/>
     <c:param name = "email" value="${email}"/>
     <c:param name = "phoneNo" value="${phone_no}"/>
      <c:param name = "user_type" value="${usertype}"/>
     <c:param name = "UserName" value="${username}"/>
     
     
     </c:url>
     
     <a href="${passenUpdate}">
     <input class="btn" type = "button" name="update" value="Edit profile">
     </a>
     
     <c:url value="DeleteProfile.jsp" var="passenDelete">
     
     <c:param name = "Id" value="${Id}"/>
     <c:param name = "name" value="${name}"/>
     <c:param name = "email" value="${email}"/>
     <c:param name = "phoneNo" value="${phone_no}"/>
     <c:param name = "user_type" value="${usertype}"/>
     <c:param name = "UserName" value="${username}"/>
     
     
      </c:url>
      
      
     <a href="${passenDelete}">
     <input class="btn" type="button" name="delete" value="Delete profile">
     </a>
     
    </div>
    
    </section>
    
			<% }
			
		 }catch(Exception e){
		
		}
    	
	}
	else
	{
		// if no session
		
		response.sendRedirect("Login.jsp");
	}%>    
    
    <%@ include file="AdminFooter.jsp" %>
       
</body>
</html>