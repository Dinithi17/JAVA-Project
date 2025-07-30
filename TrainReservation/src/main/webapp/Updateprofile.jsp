<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
   <%@ include file="Header.jsp" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Update Profile</title>


        <link rel="preconnect" href="https://fonts.googleapis.com">

        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>

        <link href="https://fonts.googleapis.com/css2?family=Inter:wght@100;300;400;700;900&display=swap" rel="stylesheet">
                           
        <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/CSS/bootstrap.min.css">
        
        <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/CSS/bootstrap-icons.css">

        <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/CSS/UpdateProfile.css">
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
     
      <form method="post" action="UpdateServlet">
      
                <h2>Update Profile</h2>
      
                <div class="form-group">
                <b>Id : </b> <input type="text" name="id" value="<%=ID %>"readonly >
                </div>
      
               <div class="form-group">
               <b>Name : </b> <input type="text" name="pname" required value="<%=Name %>" >
               </div>
      
              <div class="form-group">
               <b>Email : </b> <input type="email" name="pemail" placeholder="Email:abc@gmail.com" value="<%=Email %>" required>
               </div>
      
              <div class="form-group">
              <b>Phone number : </b> <input type="tel" placeholder="phone number=xxx xxxxxxx" pattern="[0-9]{10}" required title="number should have 10 digits" name="phone" value="<%=PhoneNo%>">
              </div>
               
               <div class="form-group">
               <b>User Type : </b> <input type="text" name="u_type" required value="<%=User_type %>" readonly>
               </div>
               
               <div class="form-group">
               <b>User Name : </b> <input type="text" name="puname" placeholder="Enter UserName" value="<%=UserName%>" required>
               </div>
               
               <div class="form-group">
               <button type="submit" class="btn" >Update Profile </button>
               </div>
  
   </form>
  </div>
  
  </section>
  
                <%@ include file="footer.jsp" %>
  
</body>
</html>