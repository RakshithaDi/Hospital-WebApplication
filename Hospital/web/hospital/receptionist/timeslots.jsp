<%-- 
    Document   : timeslots
    Created on : May 10, 2021, 10:18:13 PM
    Author     : PC
--%>

<%@page import="java.util.List"%>
<%@page import="model.Doctor"%>
<%@page import="model.DBConnection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, shrink-to-fit=no">
    <title>hospital</title>
    <link rel="stylesheet" href="../assets/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Cabin">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Montserrat:400,600,700">
    <link rel="stylesheet" href="../assets/fonts/fontawesome-all.min.css">
    <link rel="stylesheet" href="../assets/fonts/ionicons.min.css">
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
          
        
        String username = (String)session.getAttribute("username");
        
        
        %>
        
        
             
    
    
    <nav class="navbar navbar-light navbar-expand-md d-flex d-xl-flex align-items-center align-content-center align-self-center mx-auto justify-content-xl-center align-items-xl-center navigation-clean-search" style="background: rgb(255,255,255);">
        <div class="container"><a class="navbar-brand" href="#"><i class="fas fa-hospital" style="font-size: 25px;"></i></a><button data-toggle="collapse" class="navbar-toggler" data-target="#navcol-1"><span class="sr-only">Toggle navigation</span><span class="navbar-toggler-icon"></span></button>
            <div class="collapse navbar-collapse" id="navcol-1">
                <ul class="navbar-nav">
                    <li class="nav-item"><a class="nav-link" data-bss-hover-animate="pulse" href="messages.jsp">CHAT</a></li>
                    <li class="nav-item"><a class="nav-link" data-bss-hover-animate="pulse" href="timeslots.jsp"><strong>TIMESLOTS</strong></a></li>
                </ul>
            </div>
            <div class="dropdown menu_links"><a class="dropdown-toggle" aria-expanded="false" data-toggle="dropdown" style="margin-right: 10px;color: rgb(0,0,0,0.75);border-color: rgba(0,0,0,0);"><%out.println("Hello " + username);%>   </a>
                <div class="dropdown-menu"><a class="dropdown-item" href="../../Logout">Logout</a></div>
            </div>
        </div>
    </nav>
    <div class="container" style="margin-top: 30px;margin-bottom: 100px;height: 900px;">
        <div class="row">
            <div class="col-md-6" style="height: 807px;">
                <div class="card" style="height: 775px;">
                    <div class="card-body">
                        <h5 class="text-center card-title" style="font-family: Cabin, sans-serif;">Doctors</h5>
                        
                        <div class="table-responsive">
                               
                            <table class="table">
                             
                                <thead>
                                    <tr>
                                        <th>Doctor Name</th>
                                        <th style="width: 188px;">Doctor ID</th>
                                    </tr>
                                </thead>
                                <tbody>
                                     <%List<Doctor> list = DBConnection.getDoctorDetails(); %>
            <%for(Doctor docd1:list){ %> 
                                    <tr>
                                        <td><%=docd1.getDocid()%></td>
                                        <td><%=docd1.getFname()%> <%=docd1.getLname()%></td>
                                    </tr>
                                     <%}%>
                                </tbody>
                              
                            </table> 
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-md-6">
                <div class="card" style="height: 428px;">
                    <div class="card-body" style="height: 595px;">
                        <h5 class="text-center card-title" style="font-family: Cabin, sans-serif;">Add Time Slots</h5>
                        <form method="post" action="../../SubmitDoctorTimeDate">
                            <div class="form-group"><span style="font-family: Cabin, sans-serif;">Doctor ID</span><input class="form-control" name="docid" type="text" required=""></div>
                            <div class="form-group"><span style="font-family: Cabin, sans-serif;">Date</span><input class="form-control" type="date" name="date" required=""></div>
                            <div class="form-group"><span style="font-family: Cabin, sans-serif;">Time</span><input class="form-control" type="time" name="time" required=""></div>
                            <div class="form-group text-center"><button class="btn btn-dark" type="submit" style="font-family: Cabin, sans-serif;">ADD</button></div>
                        </form>
                        <div class="alert alert-success" role="alert"><span><strong>Alert</strong> text.</span></div>
                    </div>
                </div>
            </div>
        </div>
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
        <p class="copyright">Central Hospitals © 2021</p>
    </footer>
    <script src="../assets/js/jquery.min.js"></script>
    <script src="../assets/bootstrap/js/bootstrap.min.js"></script>
    <script src="../assets/js/bs-init.js"></script>
</body>

</html>