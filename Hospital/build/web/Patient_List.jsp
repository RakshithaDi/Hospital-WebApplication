<%-- 
    Document   : dc
    Created on : Apr 6, 2021, 11:25:32 PM
    Author     : PC
--%>

<%@page import="java.util.List"%>
<%@page import="model.PatientListDB"%>
<%@page import="model.Patient"%>
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
        
        <h1> Patient List</h1>
        <%List<Patient> list = PatientListDB.getAllPatients(); %>
        
            <label>Find Patient By Name:<input type="text" name="name"  id="myInput" onkeyup="myFunction()" placeholder="Search by Name." title="Type in a name"></label>
         
      
            <br>
            <br>
            <table border='1' width='100%'  id="myTable">
            <tr class="header"><th> S.No</th> <th>First Name</th><th>Last Name</th><th>Email</th> <th>Doctor Name</th><th>Mobile No</th><th>Blood Group</th> <th>Gender</th><th>Date Of Birth</th><th>Deceased</th> <th>Address</th></tr>
            
            <%for(Patient e:list){ %>
            <tr ><td><%=e.getSno()%></td><td id="mname"><%=e.getFname()%></td><td><%=e.getLname()%></td><td><%=e.getEmail()%></td> <td> <%=e.getDocotorName()%></td><td><%=e.getMobileNo()%></td><td><%=e.getBloodGroup()%></td> <td> <%=e.getGender()%></td><td><%=e.getDob()%></td> <td><%=e.getDeceased()%></td> <td><%=e.getAddress()%></td></tr>
            <%}%>
            
            </table>
            <br>
            <a href="Appointment_List.jsp">Check Appointment List</a>
    </body>
</html>
