<%-- 
    Document   : new-select-doctor
    Created on : May 9, 2021, 2:15:19 PM
    Author     : PC
--%>

<%@page import="java.util.List"%>
<%@page import="model.Doctor"%>
<%@page import="model.DBConnection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, shrink-to-fit=no">
    <title>Select Doctor</title>
    <link rel="icon" href="../assets/img/logo.png">
    <link rel="stylesheet" href="../assets/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Lora:400,700,400italic,700italic">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Cabin:700">
    <link rel="stylesheet" href="../assets/fonts/fontawesome-all.min.css">
    <link rel="stylesheet" href="../assets/fonts/font-awesome.min.css">
    <link rel="stylesheet" href="../assets/fonts/fontawesome5-overrides.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/3.5.2/animate.min.css">
    <link rel="stylesheet" href="../assets/css/Login-Form-Clean.css">
    <link rel="stylesheet" href="../assets/css/Navbar-Dropdown-List-Item.css">
</head>

<body style="background: rgb(255,255,255);">
    <nav class="navbar navbar-light navbar-expand-md" id="mainNav" style="background: #333333;">
        <div class="container"><a class="navbar-brand js-scroll-trigger" href="#">Brand</a><button data-toggle="collapse" class="navbar-toggler navbar-toggler-right" data-target="#navbarResponsive" type="button" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation" value="Menu"><i class="fa fa-bars"></i></button>
            <div class="collapse navbar-collapse" id="navbarResponsive">
                <ul class="navbar-nav ml-auto">
                    <li class="nav-item nav-link js-scroll-trigger"><a class="nav-link active js-scroll-trigger" href="appointments.jsp">Appointments</a></li>
                    <li class="nav-item nav-link js-scroll-trigger"><a class="nav-link js-scroll-trigger" data-bss-hover-animate="pulse" href="../prescriptions/prescriptions.jsp">Prescriptions</a></li>
                    <li class="nav-item nav-link js-scroll-trigger"><a class="nav-link js-scroll-trigger" data-bss-hover-animate="pulse" href="../chat/messages.html">Chat</a></li>
                    <li class="nav-item text-center d-xl-flex justify-content-xl-center align-items-xl-center nav-link js-scroll-trigger">
                        <div class="nav-item dropdown d-xl-flex justify-content-xl-center align-items-xl-center menu_links"><a class="dropdown-toggle active" aria-expanded="false" data-toggle="dropdown" style="margin-right: 10px;color: rgba(255,255,255,0.75);border-color: rgba(0,0,0,0);font-size: 25px;font-family: Cabin, sans-serif;text-align: center;"><i class="fa fa-user-o" style="font-size: 24px;"></i></a>
                            <div class="dropdown-menu text-center"><a class="dropdown-item" href="../../PatientLogout" style="color: rgb(0,0,0);">Log out</a></div>
                        </div>
                    </li>
                </ul>
            </div>
        </div>
    </nav>
    <div class="container" style="height: 753px;">
        
        
        <%
            
                String doctype = request.getParameter("doctype");
                String pid = request.getParameter("patientid");
               
                
     %>
     
      
        
        <div class="row" style="margin: 19px;">
            <div class="col text-center" style="margin-top: 18px;height: 40px;">
                <h1 style="color: rgb(0,0,0);font-size: 21px;">    Select Doctor&nbsp;&nbsp;</h1> 
            </div>
        </div> 
        
         
            <%List<Doctor> list = DBConnection.getDoctors(doctype); %>
            <%for(Doctor dr1:list){ %> 
            
        <div class="row" style="margin: 19px;">
            <div class="col"> 
                <form method="post" action="new-select-datetime.jsp">
                    
                     <input type="hidden" name="doctype" value="<%=doctype%>">
                     <input type="hidden" name="patientid" value="<%=pid%>">
                     <input type="hidden" name="docname" value="<%= dr1.getFname() %>  <%= dr1.getLname() %>">
                <div class="row" style="margin-top: 5px;margin-bottom: 10px;">
                        <div class="col text-center"><button class="btn btn-light btn-block text-capitalize" type="submit" name="docid"  value="<%=dr1.getDocid() %>" style="border-radius: 5px;height: 50px;border: 1px solid #bababa ;"><%= dr1.getFname() %>  <%= dr1.getLname() %>  </button>  </form></div>  
                </div>
            </div>
        </div> <%}%>
    </div>
    <footer style="background: #212121;">
        <div class="container text-center"><a href="#" style="font-family: Cabin, sans-serif;color: var(--info);margin-right: 10px;margin-left: 10px;">Privacy Policy</a><a href="#" style="font-family: Cabin, sans-serif;color: var(--info);margin-right: 10px;margin-left: 10px;">About</a><a href="#" style="font-family: Cabin, sans-serif;color: var(--info);margin-right: 10px;margin-left: 10px;">Contact</a><a href="../feedback/new-feedback.html" style="font-family: Cabin, sans-serif;color: var(--info);margin-right: 10px;margin-left: 10px;">Leave Feedback</a></div>
        <div class="container text-center">
            <p style="font-family: Cabin, sans-serif;color: rgb(154,154,154);">CENTRAL HOSPITALS © 2021</p>
        </div>
        <div class="container text-center" style="font-size: 20px;font-family: Lora, serif;"><a href="#" style="font-family: Cabin, sans-serif;color: var(--info);margin-right: 10px;margin-left: 10px;"><i class="fa fa-facebook-square" style="color: rgb(255,255,255);"></i></a><a href="#" style="font-family: Cabin, sans-serif;color: var(--info);margin-right: 10px;margin-left: 10px;"><i class="fa fa-twitter-square" style="color: rgb(255,255,255);"></i></a><a href="#" style="font-family: Cabin, sans-serif;color: var(--info);margin-right: 10px;margin-left: 10px;"><i class="fa fa-instagram" style="color: rgb(255,255,255);"></i></a></div>
    </footer>
    <script src="../assets/js/jquery.min.js"></script>
    <script src="../assets/bootstrap/js/bootstrap.min.js"></script>
    <script src="../assets/js/bs-init.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-easing/1.4.1/jquery.easing.min.js"></script>
    <script src="../assets/js/grayscale.js"></script>
</body>

</html>
