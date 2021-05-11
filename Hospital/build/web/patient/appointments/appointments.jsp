<%-- 
    Document   : appointments
    Created on : May 10, 2021, 2:49:21 PM
    Author     : PC
--%>

<%@page import="model.Doctor"%>
<%@page import="model.Doctor"%>
<%@page import="model.Appointments"%>
<%@page import="java.util.List"%>
<%@page import="model.Patient"%>
<%@page import="model.DBConnection"%>
<%@page import="model.DBConnection"%>

<%@page import="javax.servlet.http.HttpSession"%>

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

<body style="background: rgb(242,242,242);">
    <nav class="navbar navbar-light navbar-expand-md" id="mainNav" style="background: #333333;">
        <div class="container"><a class="navbar-brand js-scroll-trigger" href="#">Central Hospitals</a><button data-toggle="collapse" class="navbar-toggler navbar-toggler-right" data-target="#navbarResponsive" type="button" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation" value="Menu"><i class="fa fa-bars"></i></button>
            <div class="collapse navbar-collapse" id="navbarResponsive">
                <ul class="navbar-nav ml-auto">
                    <li class="nav-item nav-link js-scroll-trigger"><a class="nav-link active js-scroll-trigger" href="appointment.jsp">Appointments</a></li>
                    <li class="nav-item nav-link js-scroll-trigger"><a class="nav-link js-scroll-trigger" data-bss-hover-animate="pulse" href="../prescriptions/prescriptions.jsp">Prescriptions</a></li>
                    <li class="nav-item nav-link js-scroll-trigger"><a class="nav-link js-scroll-trigger" data-bss-hover-animate="pulse" href="../chat/messages.html">Chat</a></li>
                    <li class="nav-item text-center d-xl-flex justify-content-xl-center align-items-xl-center nav-link js-scroll-trigger">
                        <div class="nav-item dropdown d-xl-flex justify-content-xl-center align-items-xl-center menu_links"><a class="dropdown-toggle active" aria-expanded="false" data-toggle="dropdown" style="margin-right: 10px;color: rgba(255,255,255,0.75);border-color: rgba(0,0,0,0);font-size: 25px;font-family: Cabin, sans-serif;text-align: center;"><i class="fa fa-user-o" style="font-size: 24px;"></i></a>
                            <div class="dropdown-menu text-center"><a class="dropdown-item" href="#" style="color: rgb(0,0,0);">Log out</a></div>
                        </div>
                    </li>
                </ul>
            </div>
        </div>
    </nav>
    <%
          
        HttpSession se = request.getSession();
        session.setMaxInactiveInterval(3600); //Expires after 30 seconds inactivity
        String email = (String)session.getAttribute("email");
        out.println("Hello " + email);
        
        %>
     
      <%List<Patient> list2 = DBConnection.getPatientID(email); %>
            <%for(Patient plog:list2){ %> 
 
    <div class="container" style="height: 802px;">
        <div class="row" style="margin: 32px;height: 100px;">
            <div class="col text-center align-self-center"><form method="post" action="new-select-specialization.jsp"> <button  type="submit" name="patientid" value="<%=plog.getPid()%>" class="btn btn-primary" role="button" data-bss-hover-animate="pulse" style="background: #0051ba;color: rgb(255,255,255);" >NEW Appointment&nbsp;&nbsp;<i class="fa fa-plus"></i></</button></form></div>
        </div>
        <div class="row" style="margin: 14px;">
            <div class="col">
                <div class="row" style="margin: 14px;">
                    <div class="col"><span style="color: rgb(255,16,16);font-family: Cabin, sans-serif;">UPCOMING</span>
                    </div>
                </div>
                <div class="row" style="margin: 14px;">
                    <div class="col">
                        <div class="row">
                            <div class="col" style="box-shadow: 0px 0px 0px 0px;">
           
                                
             <%List<Appointments> list1 = DBConnection.getBookedAppointments(plog.getPid()); %>  <%-- need to pass patient id--%>
            <%for(Appointments bookap:list1){ %>
        
               <%List<Doctor> list = DBConnection.getDoctorName(bookap.getDocid()); %>
                                 <%for(Doctor doc2:list){ %>
                                <div class="card" style="margin: 7px;">
                                    <div class="card-body" style="height: 65px;">
                                        <div class="row">
                                            <div class="col text-center">
                                                <div style="height: 22px;">
                                                    <h5 class="text-capitalize" style="color: rgb(0,0,0);font-family: Cabin, sans-serif;">Dr.<%=doc2.getFname()%> <%=doc2.getLname()%></h5>
                                                </div>
                                            </div>
                                            <div class="col-xl-2 text-center">
                                                <h5 style="color: rgb(0,0,0);"><%=bookap.getDate()%></h5>
                                            </div>
                                            <div class="col-xl-2 text-center">
                                                <h5 style="color: rgb(0,0,0);"><%=bookap.getTime()%></h5>
                                            </div>
                                            <div class="col-xl-2 text-center">
                                                <h5 style="color: rgb(0,0,0);">No.<%=bookap.getLineno()%></h5>
                                            </div>
                                        </div>  
                                    </div>
                                </div> <%}%>     <%}%>  <%}%>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="row" style="margin: 14px;">
            <div class="col">
                <div class="row" style="margin: 14px;">
                    <div class="col"><span style="color: rgb(0,0,0);font-family: Cabin, sans-serif;">PAST</span></div>
                </div>
                <div class="row" style="margin: 14px;">
                    <div class="col">
                        <div class="row">
                            <div class="col">
                                <div class="card" style="margin: 7px;">
                                    <div class="card-body" style="height: 65px;">
                                        <div class="row">
                                            <div class="col text-center">
                                                <div style="height: 22px;">
                                                    <h5 class="text-capitalize" style="color: rgb(0,0,0);">Dr. Charitha De Silva</h5>
                                                </div>
                                            </div>
                                            <div class="col-xl-2 text-center">
                                                <h5 style="color: rgb(0,0,0);">2021.05.02</h5>
                                            </div>
                                            <div class="col-xl-2 text-center">
                                                <h5 style="color: rgb(0,0,0);">10:30 AM</h5>
                                            </div>
                                            <div class="col-xl-2 text-center">
                                                <h5 style="color: rgb(0,0,0);">No.05</h5>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
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
