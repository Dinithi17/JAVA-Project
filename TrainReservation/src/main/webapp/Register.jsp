<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Register page</title>

        
         <link rel="preconnect" href="https://fonts.googleapis.com">
         
         <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
         
         <link href="https://fonts.googleapis.com/css2?family=Inter:wght@100;300;400;700;900&display=swap" rel="stylesheet">
                         
        <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/CSS/bootstrap.min.css">
        
        <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/CSS/Styles.css">
        
        <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/CSS/bootstrap-icons.css">
        
         <script src ="${pageContext.request.contextPath}/JS/myScript.js"></script>
</head>
<body>
   <section class="preloader">
            <div class="spinner">
                <span class="sk-inner-circle"></span>
            </div>
        </section>
    
        <main>

            <section class="sign-in-form section-padding">
                <div class="container">
                    <div class="row">

                        <div class="col-lg-8 mx-auto col-12">

                            <h1 class="hero-title text-center mb-5">Sign Up</h1>

                           

                            <div class="row">
                                <div class="col-lg-8 col-11 mx-auto">
                                    <form role="form" method="post" action="RegisterServlet" onsubmit="return checkPasswordMatch()">

                                      <div class="form-floating">
                                        <input type="text" name="pname" id="name"  class="form-control" placeholder="Enter Name" required>

                                        <label for="name">Name</label>
                                    </div>

                                    <div class="form-floating my-4">
                                        <input type="email" name="pemail" id="email" class="form-control" placeholder="Email:abc@gmail.com" required>

                                        <label for="email">Email address</label>
                                        
                                        
                                    </div>

                                    <div class="form-floating my-4">
                                      <input type="tel" name="phone" id="phone" pattern="[0-9a-zA-Z]{4,10}" class="form-control" placeholder="phone number=xxx xxxxxxx" pattern="[0-9]{10}" required title="number should have 10 digits">

                                      <label for="phone">Phone number</label>
                                      
                                      
                                  </div>

                                    <div class="form-floating my-4">
                                        <select class="form-select" name="user_type">
                                            
                                            <option >User</option>
                                            <option >Admin</option>
                                            
                                          </select>
                                    </div>
                               
                                    <div class="form-floating my-4">
                                        <input type="text" name="puname" id="uname"  class="form-control" placeholder="Enter username" required>

                                        <label for="uname">UserName</label>
                                        
                                        
                                    </div>

                                    <div class="form-floating my-4">
                                        <input type="password" name="password" id="password1" pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{6,}"
                                        title="Password must contain at least one uppercase and one lowercase letter,one number, and at least 6 or more characters" class="form-control" placeholder="Password" required>

                                        <label for="password1">Password</label>
                                                                               
                                    </div>


                                    <div class="form-floating">
                                        <input type="password" name="Re-passw" id="password2" pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{6,}"
                                        title="Password must contain at least one uppercase and one lowercase letter,one number, and at least 6 or more characters" class="form-control" placeholder="Password" required>

                                        <label for="password2">Password Confirmation</label>
                                    </div>

                                    <button type="submit" class="btn custom-btn form-control mt-4 mb-3">
                                        Create account
                                    </button>

                                    <p class="text-center">Already have an account? Please <a href="Login.jsp">Sign In</a></p>

                                    </form>
                                </div>
                            </div>
                            
                        </div>

                    </div>
                </div>
            </section>

        </main>
   
                   <%@ include file="footer.jsp" %>
</body>
</html>