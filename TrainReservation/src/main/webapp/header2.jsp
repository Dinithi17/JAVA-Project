<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="styles/header2.css">
</head>
<body>
  <header>
<h2><em>QuickRail Ticket</em></h2>
  


<nav>

                  <% HttpSession Session = request.getSession(false);
                       String email = null;
                       if(session != null)
                       {
                    	   email = (String) session.getAttribute("email");
                       }
                       String currentPage = request.getRequestURI();
                       
                    %>
  <ul class="menu">
  <%
  if(email != null){
	  
	  %>
	  
  <li><a href="AdminHome.jsp">Home</a></li>
  <li><a href="TrainList.jsp">Train List</a></li>
  <li><a href="AddTrain.jsp">Add Train</a></li>
 
 
                        <%
                             
                            	 
                             if(currentPage.contains("AdminUserAccount.jsp"))
                             {
                          %>
                           <li>  <a href = "AdminLogoutServlet">Logout</a></li>
                             
                           <%
                             }else {
                            	
                            %>	                             
                                <li><a href = "AdminUserAccount.jsp">Profile</a></li>
                             <%
                             }
                             
                             
                             %>  
                             
                         
  <%
  }
  %>
  
  </ul>
                       

</nav>
</header>

</body>
</html>