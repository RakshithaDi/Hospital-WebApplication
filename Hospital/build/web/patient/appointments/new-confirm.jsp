<%-- 
    Document   : new-confirm
    Created on : May 9, 2021, 5:15:28 PM
    Author     : PC
--%>

<%@page import="java.util.List"%>
<%@page import="model.DBConnection"%>
<%@page import="model.Appointments"%>
<%@page import="model.DoctorDateTime"%>
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
                    <li class="nav-item nav-link js-scroll-trigger"><a class="nav-link active js-scroll-trigger" href="appointments.html">Appointments</a></li>
                    <li class="nav-item nav-link js-scroll-trigger"><a class="nav-link js-scroll-trigger" data-bss-hover-animate="pulse" href="../prescriptions/prescriptions.html">Prescriptions</a></li>
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
            
                String docname = request.getParameter("docname");
                String date = request.getParameter("date");
                String time = request.getParameter("time");
                String docid = request.getParameter("docid");
                
                
                
                DoctorDateTime ddt = new DoctorDateTime();
                     ddt.setDate(date);
                     ddt.setTime(time);
                                  
     %>
     
    

    <div class="container" style="height: 753px;">
        <div class="row" style="margin: 19px;">
            <div class="col text-center" style="margin-top: 18px;height: 40px;">
                <h1 style="color: rgb(0,0,0);font-size: 21px;">Confirm Your Appointment</h1>
            </div>
        </div>
        <div class="row" style="margin: 19px;">
             <form method="post" action="../../SubmitAppointment">
            <div class="col mx-auto">
                <div class="row">
                     <%List<Appointments> list = DBConnection.checkAppointments(); %>
            <%for(Appointments ap3:list){ %>  
                    <div class="col d-xl-flex align-items-center justify-content-xl-center">
                        <div class="card d-xl-flex align-self-center justify-content-xl-center" style="width: 798px;margin: 5px;">
                            <div class="card-body">
                                <h4 class="card-title" style="color: rgb(0,0,0);padding: 5px;">Dr. <%=docname%> </h4>
                                <h6 class="text-muted card-subtitle mb-2" style="padding: 5px;">Date : <%=ddt.getDate()%></h6>
                                <h6 class="text-muted card-subtitle mb-2" style="padding: 5px;">Time : <%=ddt.getTime()%></h6>
                                <h6 class="text-muted card-subtitle mb-2" style="padding: 5px;">No :  <%=ap3.getCount()%> </h6>
                           
                            </div>
                        </div>
                    </div>
                </div>
                    <div class="form-row">
                        <div class="col d-xl-flex align-items-center justify-content-xl-center">
                            <div class="card d-xl-flex align-self-center justify-content-xl-center" style="width: 798px;margin: 5px;">
                                <div class="card-body">
                                    <div class="form-row">
                                        <div class="col">
                                           
                                                         <input type="hidden" name="patientid" value="1">
                                                         <input type="hidden" name="docid" value="<%=docid%>">
                                                         <input type="hidden" name="lineno" value="<%=ap3.getCount()%>">
                                                         <input type="hidden" name="date" value="<%=date%>">
                                                         <input type="hidden" name="time" value="<%=time%>">    
                                                  
                                            <div class="form-check"><input class="form-check-input" type="checkbox" id="pharmacy-1" name="pharmacy" value="Yes" ><label class="form-check-label" for="formCheck-1" style="color: rgb(0,0,0);font-family: Cabin, sans-serif;">Use Central Hospital Pharmacy to Buy Medicine</label></div>
                                        </div>
                                    </div>
                                    <div class="form-row">
                                        <div class="col" style="height: 20px;">
                                            <p style="color: rgb(146,146,146);font-size: 13px;font-family: Cabin, sans-serif;">When you select this option your prescription will be automatically send to the Pharmacy and you will get an email when it's ready.</p>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="form-row">
                        <div class="col">
                            <div class="form-row">
                                <div class="col text-center" style="margin: 7px;margin-top: 15px;"><button class="btn btn-primary bg-success border rounded shadow-lg" type="submit" style="color: rgb(255,255,255);background: #003893;">Confirm&nbsp;&nbsp;<i class="fa fa-check"></i></button></div>
                            </div>  
                            <div class="form-row">
                                <div class="col text-center" style="margin: 6px;"><button class="btn btn-primary bg-secondary border rounded" type="button" style="background: #003893;color: rgb(255,255,255);">Confirm and Pay Online&nbsp;&nbsp;<i class="fa fa-angle-double-right"></i></button></div>
                            </div>
                        </div>
                    </div>
               
            </div> </form> <%}%> 
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