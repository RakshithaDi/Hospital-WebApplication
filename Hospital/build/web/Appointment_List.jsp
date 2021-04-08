<%-- 
    Document   : Appointment_List
    Created on : Apr 8, 2021, 3:52:16 PM
    Author     : PC
--%>


<%@page import="model.Appointments"%>
<%@page import="java.util.List"%>
<%@page import="model.PatientListDB"%>

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
                td = tr[i].getElementsByTagName("td")[1];
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
    </head>
    <body>
        
        <h1> Appointment List</h1>
        <%List<Appointments> list = PatientListDB.getAllAppointments(); %>
        
            <label>Find Appointment By Name:<input type="text" name="name"  id="myInput" onkeyup="myFunction()" placeholder="Search by Name." title="Type in a name"></label>
            <table border='1' width='100%'>
            <tr><th> S.No</th> <th>First Name</th><th>Last Name</th><th>Doctor Name</th> <th>Mobile No</th><th>Appointment Date</th> <th>Time</th><th>Deceased</th> <th>Address</th></tr>
            
            <%for(Appointments a:list){ %>
            <tr><td><%=a.getSno()%></td><td><%=a.getFname()%></td><td><%=a.getLname()%></td><td><%=a.getDocname()%></td> <td> <%=a.getMobileno()%></td><td><%=a.getDate()%></td><td><%=a.getTime()%></td> <td> <%=a.getDeceased()%></td><td><%=a.getAddress()%></td></tr>
            <%}%>
            
            </table>
            <br>
       
    </body>
</html>
