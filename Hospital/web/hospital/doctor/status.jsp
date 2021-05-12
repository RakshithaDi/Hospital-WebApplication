<%-- 
    Document   : status
    Created on : May 11, 2021, 5:38:11 PM
    Author     : PC
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, shrink-to-fit=no">
    <title>Status</title>
    <link rel="icon" href="../assets/img/logo.png">
    <link rel="stylesheet" href="../assets/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Montserrat:400,600,700">
    <link rel="stylesheet" href="../assets/fonts/fontawesome-all.min.css">
    <link rel="stylesheet" href="../assets/fonts/font-awesome.min.css">
    <link rel="stylesheet" href="../assets/fonts/ionicons.min.css">
    <link rel="stylesheet" href="../assets/fonts/fontawesome5-overrides.min.css">
    <link rel="stylesheet" href="../assets/css/Contact-Form-Clean.css">
    <link rel="stylesheet" href="../assets/css/Footer-Basic.css">
    <link rel="stylesheet" href="../assets/css/Footer-Clean.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/3.5.2/animate.min.css">
    <link rel="stylesheet" href="../assets/css/Login-Form-Clean.css">
    <link rel="stylesheet" href="../assets/css/Login-Form-Dark.css">
    <link rel="stylesheet" href="../assets/css/Navbar-Dropdown-List-Item.css">
    <link rel="stylesheet" href="../assets/css/Navigation-with-Button.css">
    <link rel="stylesheet" href="../assets/css/Navigation-with-Search.css">
    <link rel="stylesheet" href="../assets/css/styles.css">
       
       
    
</head>

<body style="background: #dddddd;">
      <%
          
       
        String statu = (String)session.getAttribute("statu");
        response.setHeader("Cache-Control","no-cache");
        response.setHeader("Cache-Control","no-store");
        response.setHeader("Pragma","no-cache");
        response.setDateHeader ("Expires", 0);
        String username = (String)session.getAttribute("username");
         if(session.getAttribute("username")==null)
        {
            response.sendRedirect("../auth/login.html");
        }
        
        %>
         
    
    <nav class="navbar navbar-light navbar-expand-md d-flex d-xl-flex align-items-center align-content-center align-self-center mx-auto justify-content-xl-center align-items-xl-center navigation-clean-search">
        <div class="container"><a class="navbar-brand" href="#"><i class="fas fa-hospital" style="font-size: 25px;"></i></a><button data-toggle="collapse" class="navbar-toggler" data-target="#navcol-1"><span class="sr-only">Toggle navigation</span><span class="navbar-toggler-icon"></span></button>
            <div class="collapse navbar-collapse" id="navcol-1">
                <ul class="navbar-nav">
                    <li class="nav-item"><a class="nav-link" href="appointment_list.jsp" style="font-family: Montserrat, sans-serif;"><strong>Appointment List</strong></a></li>
                    <li class="nav-item"><a class="nav-link" href="#" style="font-family: Montserrat, sans-serif;">Home</a></li>
                </ul>
            </div>
            <div class="dropdown menu_links" style="font-family: Montserrat, sans-serif;"><a class="dropdown-toggle" aria-expanded="false" data-toggle="dropdown" style="margin-right: 10px;color: rgb(0,0,0,0.75);border-color: rgba(0,0,0,0);"><%out.println("Doctor ("+username+")");%> </a>
                <div class="dropdown-menu"><a class="dropdown-item" href="../../Logout">Logout</a></div>
            </div>
        </div>
    </nav>
        
        
        
    <div class="container" style="height: 814px;">
        <br>
        <br>
        <br>
        <br>
        <br>
        <br>
        <center> <h1> <%=statu%>  </h1> </center>
    </div>
        
        
    <footer class="footer-basic">
        <div class="social"><a href="#"><i class="icon ion-social-instagram"></i></a><a href="#"><i class="icon ion-social-twitter"></i></a><a href="#"><i class="icon ion-social-facebook"></i></a></div>
        <ul class="list-inline">
            <li class="list-inline-item"><a href="#" style="font-size: 15px;">Home</a></li>
            <li class="list-inline-item"><a href="#" style="font-size: 15px;">Services</a></li>
            <li class="list-inline-item"><a href="#" style="font-size: 15px;">About</a></li>
            <li class="list-inline-item"><a href="#" style="font-size: 15px;">Terms</a></li>
            <li class="list-inline-item"><a href="#" style="font-size: 15px;">Privacy Policy</a></li>
        </ul>
        <p class="copyright">Company Name © 2021</p>
    </footer>
    <script src="../assets/js/jquery.min.js"></script>
    <script src="../assets/bootstrap/js/bootstrap.min.js"></script>
    <script src="../assets/js/bs-init.js"></script>
</body>

</html>
