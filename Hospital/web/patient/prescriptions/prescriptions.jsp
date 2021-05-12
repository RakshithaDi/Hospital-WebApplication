<%-- 
    Document   : prescription
    Created on : May 9, 2021, 1:31:55 PM
    Author     : PC
--%>

<%@page import="model.Patient"%>
<%@page import="model.Doctor"%>
<%@page import="java.util.List"%>
<%@page import="model.Prescription"%>
<%@page import="model.DBConnection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, shrink-to-fit=no">
    <title>patient 2</title>
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

<body style="background: #f2f2f2;">
    <nav class="navbar navbar-light navbar-expand-md" id="mainNav" style="background: #333333;">
        <div class="container"><a class="navbar-brand js-scroll-trigger" href="#">Central Hospitals</a><button data-toggle="collapse" class="navbar-toggler navbar-toggler-right" data-target="#navbarResponsive" type="button" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation" value="Menu"><i class="fa fa-bars"></i></button>
            <div class="collapse navbar-collapse" id="navbarResponsive">
                <ul class="navbar-nav ml-auto">
                    <li class="nav-item nav-link js-scroll-trigger"><a class="nav-link js-scroll-trigger" data-bss-hover-animate="pulse" href="../appointments/appointments.jsp">Appointments</a></li>
                    <li class="nav-item nav-link js-scroll-trigger"><a class="nav-link active js-scroll-trigger" href="#download">Prescriptions</a></li>
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
    
    
    <%
          

    
        
         String email = (String)session.getAttribute("email");
       // out.println("Hello " + email);
        response.setHeader("Cache-Control","no-cache");
        response.setHeader("Cache-Control","no-store");
        response.setHeader("Pragma","no-cache");
        response.setDateHeader ("Expires", 0);
      
         if(session.getAttribute("email")==null)
        {
            response.sendRedirect("../auth/login.html");
        }
       
        
        %>
     
      <%List<Patient> list3 = DBConnection.getPatientID(email); %>
            <%for(Patient plog:list3){ %>
    
         
    <div class="container">
        <div class="col" style="margin-top: 20px;">
            <div class="row" style="margin-top: 25px;margin-bottom: 20px;">
                <div class="col">
                     <%List<Prescription> list2 = DBConnection.getPrescription(plog.getPid()); %>
            <%for(Prescription p:list2){ %>  
            
                    <div class="card">
                        <div class="card-body">
                            <h6 class="mb-2" style="color: rgb(129,129,129);border-color: rgb(0,0,0);">Prescription ID: <%=p.getPrscid()%> &nbsp;</h6>
                            <h4 class="text-capitalize card-title" style="color: rgb(0,0,0);font-size: 20px;"> 
                                <%List<Doctor> list = DBConnection.getDoctorName(p.getDocid()); %>
                                 <%for(Doctor doc2:list){ %>Dr.<%=doc2.getFname()%> <%=doc2.getLname()%> <%}%></h4>
                            <h6 class="mb-2" style="color: rgb(27,27,27);border-color: rgb(0,0,0);">Date :  <%=p.getDate()%></h6>
                            <p class="card-text" style="color: rgb(0,0,0);"> <%=p.getPrsclist()%> <br><%=p.getNotes()%></p>
                            
                            <div class="row">
                                <div class="col text-center"><button class="btn btn-light border rounded" type="button" style="margin-right: 10px;margin-left: 10px;">Pay Online</button></div>
                            </div>
                        </div>
                    </div> <%}%> <%}%> 
                </div>
            </div>
          
        </div>
    </div>
    <footer style="background: #212121;">
        <div class="container text-center"><a href="#" style="font-family: Cabin, sans-serif;color: var(--info);margin-right: 10px;margin-left: 10px;">Privacy Policy</a><a href="#" style="font-family: Cabin, sans-serif;color: var(--info);margin-right: 10px;margin-left: 10px;">About</a><a href="#" style="font-family: Cabin, sans-serif;color: var(--info);margin-right: 10px;margin-left: 10px;">Contact</a></div>
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