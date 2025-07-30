<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

       <link rel="preconnect" href="https://fonts.googleapis.com">

        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>

        <link href="https://fonts.googleapis.com/css2?family=Inter:wght@100;300;400;700;900&display=swap" rel="stylesheet">

       <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/CSS/bootstrap.min.css">
        <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/CSS/bootstrap-icons.css">
       
    <style>
	
	.navbar {
  background: #FFFFFF;
  position: fixed;
  top: 0;
  right: 0;
  left: 0;
  padding: 25px 0;
  z-index: 9999;
  will-change: transform;
  transition: transform 300ms linear;
}

.navbar span, h2 span, h4 span {
	color:#FF4400;
}

.navbar.headroom--not-top {
  padding: 20px 0;
}

.headroom--pinned {
  transform: translate(0, 0);
}

.headroom--unpinned {
  transform: translate(0, -150%);
}

.navbar-brand {
  color: #000000;
  font-size: 24px;
  font-weight: 300;
  margin: 0;
  padding: 0;
}

.navbar-expand-lg .navbar-nav .nav-link {
  display: inline-block;
  padding: 0;
  margin-right: 1.5rem;
  margin-left: 1.5rem;
}

.nav-link {
  color: #717275;
  font-size: 16px;
  position: relative;
  
}

.navbar .nav-link::after {
  position: absolute;
  top: 100%;
  left: 0;
  width: 100%;
  height: 2px;
  background: #d0d1d1;
  content: '';
  opacity: 0;
  -webkit-transition: opacity 0.3s, -webkit-transform 0.3s;
  -moz-transition: opacity 0.3s, -moz-transform 0.3s;
  transition: opacity 0.3s, transform 0.3s;
  -webkit-transform: translateY(10px);
  -moz-transform: translateY(10px);
  transform: translateY(10px);
}


.navbar ,
.navbar .nav-link:hover {
  color: #FF4400;
}

.nav-link:focus, 
.nav-link:hover {
  color: #717275;
}

.navbar-toggler {
  border: 0;
  padding: 0;
  cursor: pointer;
  margin: 0;
  width: 30px;
  height: 35px;
  outline: none;
}

.navbar-toggler:focus {
  outline: none;
  box-shadow: none;
}

.navbar-toggler[aria-expanded="true"] .navbar-toggler-icon {
  background: transparent;
}

.navbar-toggler[aria-expanded="true"] .navbar-toggler-icon:before,
.navbar-toggler[aria-expanded="true"] .navbar-toggler-icon:after {
  transition: top 300ms 50ms ease, -webkit-transform 300ms 350ms ease;
  transition: top 300ms 50ms ease, transform 300ms 350ms ease;
  transition: top 300ms 50ms ease, transform 300ms 350ms ease, -webkit-transform 300ms 350ms ease;
  top: 0;
}

.navbar-toggler[aria-expanded="true"] .navbar-toggler-icon:before {
  transform: rotate(45deg);
}

.navbar-toggler[aria-expanded="true"] .navbar-toggler-icon:after {
  transform: rotate(-45deg);
}

.navbar-toggler .navbar-toggler-icon {
  background: #000000;
  transition: background 10ms 300ms ease;
  display: block;
  width: 30px;
  height: 2px;
  position: relative;
}

.navbar-toggler .navbar-toggler-icon::before,
.navbar-toggler .navbar-toggler-icon::after {
  transition: top 300ms 350ms ease, -webkit-transform 300ms 50ms ease;
  transition: top 300ms 350ms ease, transform 300ms 50ms ease;
  transition: top 300ms 350ms ease, transform 300ms 50ms ease, -webkit-transform 300ms 50ms ease;
  position: absolute;
  right: 0;
  left: 0;
  background:#000000;
  width: 30px;
  height: 2px;
  content: '';
}

.navbar-toggler .navbar-toggler-icon:before {
  top: -8px;
}

.navbar-toggler .navbar-toggler-icon:after {
  top: 8px;
}

.navbar-expand-lg .navbar-nav .nav-link {
    margin-top: 1rem;
	
  }
  
  .dropdown {
            position: relative;
        }

        .dropdown:hover .dropdown-menu {
            display: block;
        }

        .dropdown-menu {
            display: none;
            position: absolute;
            top: 50px;
            right: 0;
            background-color: white;
            box-shadow: 0 8px 16px rgba(0, 0, 0, 0.1);
            border-radius: 5px;
            min-width: 150px;
            z-index: 1000;
        }

        .dropdown-menu a {
            color: #333;
            padding: 10px 15px;
            text-decoration: none;
            display: block;
            font-size: 14px;
        }

        .dropdown-menu a:hover {
            background-color: #f1f1f1;
            border-radius: 5px;
        }

        .profile-icon {
            display: flex;
            align-items: center;
            cursor: pointer;
        }

        .profile-icon img {
            border-radius: 50%;
            width: 30px;
            height: 30px;
            margin-right: 8px;
        }
        
        .custom-icon {
        color: #717275;
        font-size: 24px;
        }

      .custom-icon {
       display: inline-block;
       vertical-align: middle;
       }

     .bi-bag.custom-icon {
       font-size: 17px;
      }

    .featured-icon {
     color:#d0d1d1;
    font-size: 52px;
     }

	
	</style>

    </head>
    
    <body>

        <section class="preloader">
            <div class="spinner">
                <span class="sk-inner-circle"></span>
            </div>
        </section>
    
      

            <nav class="navbar navbar-expand-lg">
                <div class="container">
                    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                        <span class="navbar-toggler-icon"></span>
                    </button>

                    <a class="navbar-brand" href="index.html">
                        <strong><span>QuickRail</span> Ticket</strong>
                    </a>
                    
                     <div class="d-lg-none">
                        <a href="Login.jsp" class="bi-person custom-icon me-3"></a>
                       
                    </div>
                  
                    <div class="collapse navbar-collapse" id="navbarNav">
                    
                    <% HttpSession Session = request.getSession(false);
                       String email = null;
                       if(session != null)
                       {
                    	   email = (String) session.getAttribute("email");
                       }
                       String currentPage = request.getRequestURI();
                       
                    %>
                        <ul class="navbar-nav mx-auto">
                        
                        <%
                            if(email != null) {
                        %>
                            <li class="nav-item">
                                <a class="nav-link active" href="Index.jsp">Home</a>
                            </li>

                            <li class="nav-item">
                                <a class="nav-link" href="SearchTrain.jsp">SerchTrain</a>
                            </li>

                            <li class="nav-item">
                                <a class="nav-link" href="message.jsp">Feedback</a>
                            </li>

                            <li class="nav-item">
                                <a class="nav-link" href="aboutus.jsp">AboutUs</a>
                            </li>

                            
							
						<% 
                            }
						%>	
                        </ul>
                        
                         <div class="d-none d-lg-block">
                         <%
                             if(email == null){
                         %>
                      
                            <a href="Login.jsp">SignIn</a>
                          
                          <%
                             }else {
                            	 
                             if(currentPage.contains("Useraccount.jsp"))
                             {
                          %>
                             <a href="LogoutServlet">Logout</a>

                             
                           <%
                             }else {
                            	
                            %>	                             
                                <a href = "Useraccount.jsp">Profile</a>
                             <%
                             }
                             
                           }  
                             %>   
                        </div>

                        
						 
                    </div>
                </div>
            </nav>


</body>
</html>