<%@page import="java.util.List"%>
<%@page import="model.Prescription"%>
<%@page import="model.DBConnection"%>
<%@page import="java.time.LocalDateTime"%>
<%@page import="java.time.format.DateTimeFormatter"%>
<%@page import="model.Patient"%>
<%@page import="model.Appointments"%>
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

<body style="background: #dddddd;font-family: Montserrat, sans-serif;">
    <% 
     
      int pid = Integer.parseInt(request.getParameter("patientid"));
      int appid = Integer.parseInt(request.getParameter("appid"));
      int docid = Integer.parseInt(request.getParameter("docid"));
      String appdate=request.getParameter("appdate");
      String pharmacy=request.getParameter("pharmacy");
      
      
      String fname=request.getParameter("fname");
      String lname=request.getParameter("lname");
      String dob=request.getParameter("dob");
      int phoneno = Integer.parseInt(request.getParameter("phoneno"));
      String email=request.getParameter("email");
      String address=request.getParameter("address");
      String gender=request.getParameter("gender");
      String bloodtype=request.getParameter("bloodtype");
      String pec=request.getParameter("pec");
      
      
        
      Appointments apt = new Appointments();
      apt.setPid(pid);
      apt.setAptid(appid);
      apt.setDocid(docid);
      apt.setDate(appdate);
      apt.setPharmacy(pharmacy);
      
      
      Patient pat = new Patient();
      pat.setFname(fname);
      pat.setLname(lname);
      pat.setDob(dob);
      pat.setMobileNo(phoneno);
      pat.setEmail(email);
      pat.setAddress(address);
      pat.setGender(gender);
      pat.setBloodGroup(bloodtype);
      pat.setPec(pec);
    
    %>
    
        <%DateTimeFormatter dtf = DateTimeFormatter.ofPattern("yyyy/MM/dd");
   LocalDateTime now = LocalDateTime.now();
   System.out.println(dtf.format(now));%>
   
     <%
          
        HttpSession se = request.getSession();
        session.setMaxInactiveInterval(1800); //Expires after 30 seconds inactivity
        String username = (String)session.getAttribute("username");
        
        
        %>
         
    
    
    
<nav class="navbar navbar-light navbar-expand-md d-flex d-xl-flex align-items-center align-content-center align-self-center mx-auto justify-content-xl-center align-items-xl-center navigation-clean-search">
        <div class="container"><a class="navbar-brand" href="#"><i class="fas fa-hospital" style="font-size: 25px;"></i></a><button data-toggle="collapse" class="navbar-toggler" data-target="#navcol-1"><span class="sr-only">Toggle navigation</span><span class="navbar-toggler-icon"></span></button>
            <div class="collapse navbar-collapse" id="navcol-1">
                <ul class="navbar-nav">
                    <li class="nav-item"><a class="nav-link" href="appointment_list.jsp" style="font-family: Montserrat, sans-serif;"><strong>Appointment List</strong></a></li>
                    <li class="nav-item"><a class="nav-link" href="#" style="font-family: Montserrat, sans-serif;">Home</a></li>
                </ul>
            </div>
            <div class="dropdown menu_links" style="font-family: Montserrat, sans-serif;"><a class="dropdown-toggle" aria-expanded="false" data-toggle="dropdown" style="margin-right: 10px;color: rgb(0,0,0,0.75);border-color: rgba(0,0,0,0);"><%out.println("Hello " + username);%>  </a>
                <div class="dropdown-menu"><a class="dropdown-item" href="#">Logout</a></div>
            </div>
        </div>
    </nav>
    <div class="container-sm">
        <div class="row">
            <div class="col">
                <div style="margin: 16px;">
                    <div class="row">
                        
                        <div class="col text-left align-self-center">
                            <h6 class="text-uppercase text-center text-dark" style="font-family: Montserrat, sans-serif;text-align: center;"><b> No : <%=apt.getAptid()%></b></h6>
                        </div>
                       
                    </div>
                </div>
            </div>
        </div>
                        
                        
        <div class="row">
            <div class="col-xl-5 offset-xl-0 ml-auto" style="padding-left: 0;padding-right: 0;padding-bottom: 0;margin-bottom: 10px;">
                <div class="mx-auto">
                    <div class="card" style="padding-bottom: 0;margin-bottom: 10px;">
                        <div class="card-header">
                            <h5 class="mb-0">Patient Details<br></h5>
                        </div>
                        <div class="card-body" style="margin-bottom: 0;background: #ffffff;">
                            <h4 class="card-title" style="color: rgb(0,0,0);font-size: 20px;"> <%=pat.getFname()+" "+pat.getLname()%></h4>
                            <h4 class="card-title" style="color: rgb(0,0,0);font-size: 20px;"><%=pat.getDob()%></h4>
                            <h4 class="card-title" style="color: rgb(0,0,0);font-size: 20px;"><%=pat.getGender()%></h4>
                            <h4 class="card-title" style="color: rgb(0,0,0);font-size: 20px;">Blood Group : <%=pat.getBloodGroup()%></h4>
                            <h4 class="card-title" style="color: rgb(0,0,0);font-size: 20px;">Pharmacy : <%=apt.getPharmacy()%></h4>
                            <hr>
                            <h1 class="text-left card-title" style="color: var(--red);font-size: 17px;font-family: Montserrat, sans-serif;">Pre Existing Conditions</h1>
                            <h1 class="text-left text-dark card-title" style="color: var(--red);font-size: 17px;font-family: Montserrat, sans-serif;"> <%=pat.getPec()%></h1>
                        </div>
                    </div>
                        
                    <div class="card">
                        <div class="card-header">
                            <h5 class="mb-0">New Diagnosis<br></h5>
                        </div>
                        <div class="card-body">
                            <div class="col" style="padding-left: 0;padding-right: 0;">
                                <form method="post" action="../../SubmitDiagnosisPrescription">
                                    <input type="hidden" name="patientid" value="<%=apt.getAptid()%>">
                                    <input type="hidden" name="doctorid" value="<%=apt.getDocid()%>">
                                    <input type="hidden" name="date" value="<%=dtf.format(now)%>">
                                    <div class="form-group"><textarea class="form-control" name="diagnosis" placeholder="Diagnosis" rows="14" style="height: 152px;" required></textarea></div>
                                    <div class="form-group"><textarea class="form-control" name="prescription" placeholder="Prescription" rows="14" style="height: 171px;" required></textarea></div>
                                    <div class="form-group text-center"><button class="btn btn-primary" type="submit">SUBMIT</button></div>
                                </form>
                            </div>
                        </div>
                    </div>
                        
                </div>
            </div>
      <div class="col-md-6 col-xl-7 mr-auto"> 
                <div>
                    <div class="card">
                        <div class="card-header">  
                            <h5 class="mb-0">History<br></h5>
                        </div>
                        <%List<Prescription> list2 = DBConnection.getPrescription(apt.getPid()); %>
            <%for(Prescription p:list2){ %>
                        <div class="card-body" style="background: #ffffff;padding: 15px;">
                            <div class="col align-self-center mx-auto" style="padding-right: 0;padding-left: 0;">
                                <div class="card" style="margin-bottom: 10px;"> 
                                    <div class="card-header" style="background: rgba(0,0,0,0);">
                                        <h5 class="d-inline mb-0">  <%=p.getDate()%> </h5><button class="btn btn-light float-right" type="button">Print</button>
                                    </div>
                                    <div class="card-body text-left" style="padding: 0px;">
                                        <div class="row">  
                                            <div class="col" style="padding-right: 0;">
                                                <div class="card" style="border-style: none;"> 
                                                    <div class="card-body" style="border-style: none;"> 
            
                                                        <h4 class="card-title">Diagnosis</h4> 
                                                        <p class="card-text"> <%=p.getNotes()%>    </p>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col">
                                                <div class="card" style="border-style: none;">
                                                    <div class="card-body" style="border-style: none;">
                                                        <h4 class="card-title">Prescription</h4>
                                                        <p class="card-text">   <%=p.getPrsclist()%>      </p>  
                                                    </div>  
                                                </div> 
                                            </div>
                                        </div>     
                                    </div>
                                </div> 
                            
                            </div>
                        </div> <%}%>
                    </div>
                </div> 
            </div>                
                                    
                                    
        </div>
    </div>
    <footer class="footer-basic">
        <div class="social"><a href="#"><i class="icon ion-social-instagram"></i></a><a href="#"><i class="icon ion-social-twitter"></i></a><a href="#"><i class="icon ion-social-facebook"></i></a></div>
        <ul class="list-inline">
            <li class="list-inline-item"><a href="#">Home</a></li>
            <li class="list-inline-item"><a href="#">Services</a></li>
            <li class="list-inline-item"><a href="#">About</a></li>
            <li class="list-inline-item"><a href="#">Terms</a></li>
            <li class="list-inline-item"><a href="#">Privacy Policy</a></li>
        </ul>
        <p class="copyright">Company Name © 2021</p>
    </footer>
    <script src="../assets/js/jquery.min.js"></script>
    <script src="../assets/bootstrap/js/bootstrap.min.js"></script>
</body>

</html>