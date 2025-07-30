<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
     <%@ include file="Header.jsp" %>
     
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Delete Profile</title>


<link rel="preconnect" href="https://fonts.googleapis.com">

        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>

        <link href="https://fonts.googleapis.com/css2?family=Inter:wght@100;300;400;700;900&display=swap" rel="stylesheet">
                           
        <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/CSS/bootstrap.min.css">
        
        <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/CSS/bootstrap-icons.css">

        <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/CSS/UpdateProfile.css">
        
         <script src ="${pageContext.request.contextPath}/JS/myScript.js"></script>
</head>
<body>

    <%
     
       String ID = request.getParameter("Id");
       String Name = request.getParameter("name");
       String Email = request.getParameter("email");
       String PhoneNo = request.getParameter("phoneNo");
       String User_type = request.getParameter("user_type");
       String UserName = request.getParameter("UserName");
     
     
     %>
     
     <section class="account-section">
    
    <div class="container2">
     
      <form method="post" action="DeleteServlet">
      
         <h2>Delete Profile Details</h2>
     
      <b>Id : </b> <input type="text" name="id" value="<%=ID %>"readonly ><br><br>
      
      <b>Name : </b> <input type="text" name="pname"  value="<%=Name %>"readonly ><br><br>
 
      <b>Email : </b> <input type="email" name="pemail"  value="<%=Email %>" readonly><br><br>
      
      <b>Phone number : </b> <input type="tel"  title="number should have 10 digits" name="phone" value="<%=PhoneNo%>" readonly><br><br>
      
      <b>User Type : </b> <input type="text" name="u_type"  value="<%=User_type %>" readonly ><br><br>
 
      <b>User Name : </b> <input type="text" name="puname"  value="<%=UserName%>" readonly><br><br>
      
            <div class="form-group">
               <button onclick = "showConfirm" type="submit" class="btn"  >Delete Profile </button>
               </div>
 
  
   </form>
   </div>
   
   </section>
   
   <%@ include file="footer.jsp" %>

</body>
</html>