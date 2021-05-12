<%-- 
    Document   : accounts
    Created on : May 10, 2021, 10:00:32 PM
    Author     : PC
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

 <% response.setHeader("Cache-Control", "no-cache, no-store");%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, shrink-to-fit=no">
    <title>hospital</title>
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
         
        //HttpSession se = request.getSession();
       // session.setMaxInactiveInterval(3600); //Expires after 30 seconds inactivity
       // response.setHeader("Cache-Control", "no-cache, not-store, must-revalidate");
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
                    <li class="nav-item"><a class="nav-link" data-bss-hover-animate="pulse" href="accounts.jsp"><strong style="font-family: Montserrat, sans-serif;">Create Accounts</strong></a></li>
                    <li class="nav-item"><a class="nav-link" data-bss-hover-animate="pulse" href="feedback.jsp" style="font-family: Montserrat, sans-serif;">Feedback</a></li>
                </ul>
            </div>
            <div class="dropdown menu_links"><a class="dropdown-toggle" aria-expanded="false" data-toggle="dropdown" style="margin-right: 10px;color: rgb(0,0,0,0.75);border-color: rgba(0,0,0,0);font-family: Montserrat, sans-serif;"><%out.println("Admin ("+username+")");%> </a>
                <div class="dropdown-menu"><a class="dropdown-item" href="../../Logout">Logout</a></div>
            </div>
        </div>
    </nav>
    
    
    <div class="container-fluid" style="height: 618px;">
        <div class="row">
            <div class="col-md-4">
                <section class="contact-clean" style="background: rgba(241,247,252,0);padding-top: 29px;">
                    <form method="post" action="../../DoctorRegistration">
                        <h2 class="text-center" style="font-size: 25px;">Doctor Account</h2>
                        <div class="form-group"><input class="form-control" type="text" name="typeid" placeholder="Doctor ID"  hidden=""></div>
                        <div class="form-group"><input class="form-control" type="text" name="nic" placeholder="NIC" required=""></div>
                        <div class="form-group"><input class="form-control" type="text" name="regno" placeholder="Reg No" required=""></div>
                        <div class="form-group"><input class="form-control" type="text" name="fname" placeholder="First Name" required=""></div>
                        <div class="form-group"><input class="form-control" type="text" name="lname" placeholder="Last Name" required=""></div>
                         <div class="form-group"><input class="form-control" type="text" name="username" placeholder="Username" required=""></div>
                        <div class="form-group"><input class="form-control" type="text" name="phoneno" placeholder="Phone No" required=""></div>
                        <div class="form-group"><input class="form-control" type="text" name="email" placeholder="Email" required=""></div>
             
                        <div class="form-group"><input class="form-control" type="text" name="address" placeholder="Address" required=""></div>
                        <div class="form-group">
                            <select class="form-control" name="doctortype">
                                <optgroup label="Specialization">
                                    
                                    <option value="Immunologist">Immunologist</option>
                                    <option value="Anesthesiologist">Anesthesiologist</option>
                                    <option value="Cardiologist">Cardiologist</option>
                                    <option value="Dermatologist">Dermatologist</option>
                                    <option value="Endocrinologist">Endocrinologist</option>
                                    <option value="Family Physician">Family Physician</option>
                                    <option value="Gastroenterologist">Gastroenterologist</option>
                                    <option value="Hematologist">Hematologist</option>
                                    <option value="Internist">Internist</option>
                                    
                                </optgroup>
                            </select></div>
                       
                        <div class="form-group"><input class="form-control" type="password" placeholder="Password" name="password"></div>
                       <div class="form-group text-center"><button class="btn btn-primary" type="submit">Create</button></div>
                    </form>
                </section>
            </div>
            <div class="col-md-4">
                <section class="contact-clean" style="background: rgba(241,247,252,0);padding-top: 29px;">
                    <form method="post" action="../../PharmacistRegistration">
                        <h2 class="text-center" style="font-size: 25px;">Pharmacist Account</h2>
                       
                        <div class="form-group"><input class="form-control" type="text" name="name" placeholder="Name" required=""></div>
                        <div class="form-group"><input class="form-control" type="text" name="username" placeholder="Username" required=""></div>
                        <div class="form-group"><input class="form-control" type="password" name="password" placeholder="Password"></div>
                        <div class="form-group text-center"><button class="btn btn-primary" type="submit">Create</button></div>
                    </form>
                </section>
            </div>
            <div class="col-md-4">
                <section class="contact-clean" style="background: rgba(241,247,252,0);padding-top: 29px;">
                    <form method="post"  action="../../ReceptionistRegistration">
                        <h2 class="text-center" style="font-size: 25px;">Receptionist Account</h2>
                  
                        <div class="form-group"><input class="form-control" type="text" name="name" placeholder="Name" required=""></div>
                        <div class="form-group"><input class="form-control" type="text" name="username" placeholder="Username" required=""></div>
                        <div class="form-group"><input class="form-control" type="password" name="password" placeholder="Password"></div>
                        <div class="form-group text-center"><button class="btn btn-primary" type="submit">Create</button></div>
                    </form>
                </section>
            </div>
        </div>
    </div>
    <div class="container" style="height: 261px;">
        <div class="row">
            <div class="col-md-12" style="padding: 18px;">
                <div class="alert alert-danger alert-dismissible" role="alert"><button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">×</span></button></div>
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
        <p class="copyright">Company Name © 2021</p>
    </footer>
    <script src="../assets/js/jquery.min.js"></script>
    <script src="../assets/bootstrap/js/bootstrap.min.js"></script>
    <script src="../assets/js/bs-init.js"></script>
</body>

</html>
