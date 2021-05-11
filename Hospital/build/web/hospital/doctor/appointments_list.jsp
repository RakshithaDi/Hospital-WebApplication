<%-- 
    Document   : appointments_list
    Created on : Apr 26, 2021, 3:46:10 PM
    Author     : PC
--%>

<%@page import="model.Patient"%>
<%@page import="java.util.List"%>
<%@page import="model.Appointments"%>
<%@page import="model.Appointments"%>
<%@page import="model.DBConnection"%>
<%@page import="model.DBConnection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
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
    <body> <h1> Appointment List</h1>
    <center> <label>Find Appointment By ID:<input type="text" name="name"  id="myInput" onkeyup="myFunction()" placeholder="Search by ID." title="Type in a name"></label></center>
            <br>
                
            <table border='1' width='100%' id="myTable">
            <tr class="header"><th> Appointment ID</th> <th>Name</th><th>Email</th><th>Gender</th> <th>DOB</th><th>Appointment Date</th><th>Time</th><th>View</th></tr>
        
                       <%List<Appointments> list = DBConnection.getAllAppointments(); %>
            <%for(Appointments a:list){ %>
            
            
             <%List<Patient> list1 = DBConnection.getAllPatients(a.getPid()); %>
            <%for(Patient e:list1){ %>
            
            <tr><td><%=a.getAptid()%></td><td><%=e.getFname()+" "+e.getLname()%></td><td><%=e.getEmail()%></td> <td> <%=e.getGender()%></td><td><%=e.getDob()%></td><td><%=a.getDate()%></td><td><%=a.getTime()%></td> <td>
                    
                    
                     <form method="post" action="appointmentcopy.jsp">
                
                <input type="hidden" name="patientid" value="<%=e.getPid()%>">
                <input type="hidden" name="appid" value="<%=a.getAptid()%>">
                <input type="hidden" name="docid" value="<%=a.getDocid()%>">
                 <input type="hidden" name="appdate" value="<%=a.getDate()%>">
                  <input type="hidden" name="pharmacy" value="<%=a.getPharmacy()%>">
                  
                <input type="hidden" name="fname" value="<%=e.getFname()%>"> 
                <input type="hidden" name="lname" value="<%=e.getLname()%>">
                <input type="hidden" name="dob" value="<%=e.getDob()%>">
                <input type="hidden" name="phoneno" value="<%=e.getMobileNo()%>">
                <input type="hidden" name="email" value="<%=e.getEmail()%>">
                <input type="hidden" name="address" value="<%=e.getAddress()%>">
                <input type="hidden" name="gender" value="<%=e.getGender()%>">
                <input type="hidden" name="bloodtype" value="<%=e.getBloodGroup()%>">
                 <input type="hidden" name="pec" value="<%=e.getPec()%>">
                 
                
                 <input type="submit"  value="View">
            </form>
                
                </td>
                 </tr>
                    
                    
                    
                    
             
            
            
            <%}%>     <%}%>
            </table>
            
           
        
        
        
        
        
        
    </body>
</html>
