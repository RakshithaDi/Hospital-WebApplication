<%-- 
    Document   : newjsp
    Created on : May 10, 2021, 10:39:46 PM
    Author     : PC
--%>

<%@page import="model.Doctor"%>
<%@page import="model.Patient"%>
<%@page import="java.util.List"%>
<%@page import="model.Appointments"%>
<%@page import="model.DBConnection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%-- 
    Document   : order-list
    Created on : May 10, 2021, 10:09:12 PM
    Author     : PC
--%>
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
       <script>
         function myFunction() {
          var input, filter, table, tr, td, i, txtValue;
            input = document.getElementById("myInput");
                filter = input.value.toUpperCase();
                table = document.getElementById("myTable");
                 tr = table.getElementsByTagName("tr");
                    for (i = 0; i < tr.length; i++) {
                td = tr[i].getElementsByTagName("td")[0];
                 if (td) {
                  txtValue = td.textContent || td.innerText;
                 if (txtValue.toUpperCase().indexOf(filter) > -1) {
                 tr[i].style.display = "";
               } else {
                tr[i].style.display = "none";
                    }
                  }       
                }
              }
           </script>  
           <style>
               .dcenter{
                   text-align: center;
               }
               
               .header{
                   width: 180px;
               }
           </style>
    
    
</head>

<body style="background: #dddddd;">
    
          <%
          
        HttpSession se = request.getSession();
        session.setMaxInactiveInterval(3600); //Expires after 30 seconds inactivity
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
    <div class="container" style="height: 814px;">
        <br>
        <center> <label><b>Find Appointment By ID:</b> <input type="text" name="name"  id="myInput" onkeyup="myFunction()" placeholder="  Search by ID." title="Type in a name"></label></center>
       <br>
        <div class="col" style="padding: 0px;background: #ffffff;margin: 13px;">
            <div class="table-responsive">
                <table class="table" id="myTable">
                    <thead>
                        <tr class="header">
                            <th>Appointment ID</th>
                            <th>Name</th>
                            <th>Email</th>
                            <th>Gender</th>
                            <th>DOB</th>
                            <th>Appointment Date</th>
                            <th>Time</th>
                            <th>View</th>
                        </tr>
                        
                        <%List<Doctor> list2 = DBConnection.getDoctorId(username); %>
            <%for(Doctor doc3:list2){ %>
                        
                        
            <%List<Appointments> list = DBConnection.getAppointmentDetails(doc3.getDocid()); %>
            <%for(Appointments appo1:list){ %>
            
            
             <%List<Patient> list1 = DBConnection.getAllPatients(appo1.getPid()); %>
            <%for(Patient e:list1){ %>
                        
                        
                        
                    </thead>
                    <tbody>
                        <tr align="center">
                            <td><%=appo1.getLineno()%></td>
                            <td><%=e.getFname()+" "+e.getLname()%></td>
                            <td><%=e.getEmail()%></td>
                            <td> <%=e.getGender()%></td>
                            <td><%=e.getDob()%></td>
                            <td><%=appo1.getDate()%> </td>
                            <td><%=appo1.getTime()%></td>
                            <td>
                              
                <form method="post" action="appointmentcopy.jsp">
                
                     <input type="hidden" name="patientid" value="<%=e.getPid()%>">
                     <input type="hidden" name="appid" value="<%=appo1.getLineno()%>">
                     <input type="hidden" name="docid" value="<%=appo1.getDocid()%>">
                     <input type="hidden" name="appdate" value="<%=appo1.getDate()%>">
                     <input type="hidden" name="pharmacy" value="<%=appo1.getPharmacy()%>">
                  
                <input type="hidden" name="fname" value="<%=e.getFname()%>"> 
                <input type="hidden" name="lname" value="<%=e.getLname()%>">
                <input type="hidden" name="dob" value="<%=e.getDob()%>">
                <input type="hidden" name="phoneno" value="<%=e.getMobileNo()%>">
                <input type="hidden" name="email" value="<%=e.getEmail()%>">
                <input type="hidden" name="address" value="<%=e.getAddress()%>">
                <input type="hidden" name="gender" value="<%=e.getGender()%>">
                <input type="hidden" name="bloodtype" value="<%=e.getBloodGroup()%>">
                 <input type="hidden" name="pec" value="<%=e.getPec()%>">
                 
                 <button class="btn btn-light" type="submit"><b>View</b></button>
                 
                 </form>
                        </td>
                      </tr>
                        <%}%> <%}%> <%}%>
                    </tbody>
                </table>
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
