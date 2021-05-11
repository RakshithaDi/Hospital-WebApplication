<%-- 
    Document   : app
    Created on : Apr 25, 2021, 2:32:09 PM
    Author     : PC
--%>

<%@page import="java.time.LocalDateTime"%>
<%@page import="java.time.format.DateTimeFormatter"%>
<%@page import="model.Prescription"%>
<%@page import="java.util.List"%>
<%@page import="model.Patient"%>
<%@page import="model.DBConnection"%>
<%@page import="model.Appointments"%>
<%@page import="java.util.Calendar"%>
<%@page import="java.util.GregorianCalendar"%>
  
    
    
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, shrink-to-fit=no">
    <title>hospital</title>
    <link rel="stylesheet" href="../assets/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Montserrat:400,600,700">
    <link rel="stylesheet" href="../assets/fonts/font-awesome.min.css">
    <link rel="stylesheet" href="../assets/fonts/ionicons.min.css">
    <link rel="stylesheet" href="../assets/css/Contact-Form-Clean.css">
    <link rel="stylesheet" href="../assets/css/Footer-Basic.css">
    <link rel="stylesheet" href="../assets/css/Footer-Clean.css">
    <link rel="stylesheet" href="../assets/css/Navigation-with-Button.css">
    <link rel="stylesheet" href="../assets/css/styles.css">
     
</head>
      
<body style="background: #dddddd;font-family: Montserrat, sans-serif;">
     
    <nav class="navbar navbar-light navbar-expand-md navigation-clean-button">
        <div class="container"><a class="navbar-brand" href="#">Appointments</a><button data-toggle="collapse" class="navbar-toggler" data-target="#navcol-1"><span class="sr-only">Toggle navigation</span><span class="navbar-toggler-icon"></span></button>
            <div class="collapse navbar-collapse" id="navcol-1">
                <ul class="navbar-nav mx-auto">
                    <li class="nav-item"></li>
                </ul><span class="navbar-text actions"> <a class="login" href="#" style="font-size: 18px;">Home</a></span>
            </div>
        </div>
    </nav>
         <div class="row">
            <div class="col">
                <div style="margin: 16px;">
                    <div class="row">
                        <div class="col text-left align-self-center"><button class="btn btn-dark text-center" type="button" style="margin: 3px;width: 100;"><i class="fa fa-chevron-left"></i>&nbsp; PREVIOUS</button></div>
                        <div class="col text-left align-self-center">
                            <h6 class="text-uppercase text-center text-dark" style="font-family: Montserrat, sans-serif;text-align: center;">No : 12</h6>
                        </div>
                        <div class="col text-right align-self-center"><button class="btn btn-dark text-center" type="button" style="margin: 3px;width: 100px;">NEXT&nbsp;&nbsp;<i class="fa fa-chevron-right"></i></button></div>
                    </div>
                </div>
            </div>
        </div>
    
                       <%List<Appointments> list = DBConnection.getAllAppointments(); %>
            <%for(Appointments a:list){ %>
            
            
             <%List<Patient> list1 = DBConnection.getAllPatients(a.getPid()); %>
            <%for(Patient e:list1){ %>
      
         <%--<% int dob =Integer.parseInt(e.getDob()); %> --%>
        <%DateTimeFormatter dtf = DateTimeFormatter.ofPattern("yyyy/MM/dd");
   LocalDateTime now = LocalDateTime.now();
   System.out.println(dtf.format(now));%>
         
                   
    <div class="container-sm">
    
         
            
      
        <div class="row">
            <div class="col-xl-5 offset-xl-0 ml-auto" style="padding-left: 0;padding-right: 0;padding-bottom: 0;margin-bottom: 10px;"> 
                <div class="mx-auto"> 
                    <div class="card" style="padding-bottom: 0;margin-bottom: 10px;">
                        <div class="card-header">
         
                            <h5 class="mb-0">Patient Details<br></h5>
                        </div>       
                        <div class="card-body" style="margin-bottom: 0;background: #ffffff;">
                            <h4 class="card-title" style="color: rgb(0,0,0);font-size: 20px;">No : <%=a.getAptid()%></h4>
                            <h4 class="card-title" style="color: rgb(0,0,0);font-size: 20px;"><%=e.getFname() +" "+ e.getLname()%></h4>
                            <h4 class="card-title" style="color: rgb(0,0,0);font-size: 20px;">  <%GregorianCalendar cal = new GregorianCalendar(); 
                            
                            out.print(cal.get(Calendar.YEAR));%> year old</h4>
                            <h4 class="card-title" style="color: rgb(0,0,0);font-size: 20px;"><%=e.getGender()%></h4>    
                            <h4 class="card-title" style="color: rgb(0,0,0);font-size: 20px;">Blood Type : <%=e.getBloodGroup()%> </h4>
            
                            <hr>
                            <h1 class="text-left card-title" style="color: var(--red);font-size: 17px;font-family: Montserrat, sans-serif;">Pre Existing Conditions</h1>
                            <h1 class="text-left text-dark card-title" style="color: var(--red);font-size: 17px;font-family: Montserrat, sans-serif;"><%=e.getPec()%></h1>
                        </div>
                    </div>
                    <div class="card">
                        <div class="card-header">
                            <h5 class="mb-0">New Diagnosis<br></h5>
                        </div>
                        <div class="card-body">
                            <div class="col" style="padding-left: 0;padding-right: 0;">
                                <form method="post" action="../SubmitDiagnosisPrescription">
                                    <input type="hidden" name="patientid" value="<%=a.getAptid()%>">
                                    <input type="hidden" name="doctorid" value="<%=a.getDocid()%>">
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
                        <%List<Prescription> list2 = DBConnection.getPrescription(a.getPid()); %>
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
                        <%}%>     <%}%>
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