package org.apache.jsp.doctor;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import model.Patient;
import java.util.List;
import model.Appointments;
import model.Appointments;
import model.DBConnection;
import model.DBConnection;

public final class appointments_005flist_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>JSP Page</title>\n");
      out.write("          <script>\n");
      out.write("         function myFunction() {\n");
      out.write("          var input, filter, table, tr, td, i, txtValue;\n");
      out.write("            input = document.getElementById(\"myInput\");\n");
      out.write("                filter = input.value.toUpperCase();\n");
      out.write("                table = document.getElementById(\"myTable\");\n");
      out.write("                 tr = table.getElementsByTagName(\"tr\");\n");
      out.write("                    for (i = 0; i < tr.length; i++) {\n");
      out.write("                td = tr[i].getElementsByTagName(\"td\")[0];\n");
      out.write("                 if (td) {\n");
      out.write("                  txtValue = td.textContent || td.innerText;\n");
      out.write("                 if (txtValue.toUpperCase().indexOf(filter) > -1) {\n");
      out.write("                 tr[i].style.display = \"\";\n");
      out.write("               } else {\n");
      out.write("                tr[i].style.display = \"none\";\n");
      out.write("                    }\n");
      out.write("                  }       \n");
      out.write("                }\n");
      out.write("              }\n");
      out.write("           </script>  \n");
      out.write("           <style>\n");
      out.write("               .dcenter{\n");
      out.write("                   text-align: center;\n");
      out.write("               }\n");
      out.write("               \n");
      out.write("               .header{\n");
      out.write("                   width: 180px;\n");
      out.write("               }\n");
      out.write("           </style>\n");
      out.write("    </head>\n");
      out.write("    <body> <h1> Appointment List</h1>\n");
      out.write("    <center> <label>Find Appointment By ID:<input type=\"text\" name=\"name\"  id=\"myInput\" onkeyup=\"myFunction()\" placeholder=\"Search by ID.\" title=\"Type in a name\"></label></center>\n");
      out.write("            <br>\n");
      out.write("                \n");
      out.write("            <table border='1' width='100%' id=\"myTable\">\n");
      out.write("            <tr class=\"header\"><th> Appointment ID</th> <th>Name</th><th>Email</th><th>Gender</th> <th>DOB</th><th>Appointment Date</th><th>View</th></tr>\n");
      out.write("        \n");
      out.write("                       ");
List<Appointments> list = DBConnection.getAllAppointments(); 
      out.write("\n");
      out.write("            ");
for(Appointments a:list){ 
      out.write("\n");
      out.write("            \n");
      out.write("            \n");
      out.write("             ");
List<Patient> list1 = DBConnection.getAllPatients(a.getPid()); 
      out.write("\n");
      out.write("            ");
for(Patient e:list1){ 
      out.write("\n");
      out.write("            \n");
      out.write("            <tr><td>");
      out.print(a.getAptid());
      out.write("</td><td>");
      out.print(e.getFname()+" "+e.getLname());
      out.write("</td><td>");
      out.print(e.getEmail());
      out.write("</td> <td> ");
      out.print(e.getGender());
      out.write("</td><td>");
      out.print(e.getDob());
      out.write("</td><td>");
      out.print(a.getDate());
      out.write("</td> <td>\n");
      out.write("                    \n");
      out.write("                    \n");
      out.write("                     <form method=\"post\" action=\"appointmentcopy.jsp\">\n");
      out.write("                \n");
      out.write("                <input type=\"hidden\" name=\"patientid\" value=\"");
      out.print(e.getPid());
      out.write("\">\n");
      out.write("                <input type=\"hidden\" name=\"appid\" value=\"");
      out.print(a.getAptid());
      out.write("\">\n");
      out.write("                <input type=\"hidden\" name=\"docid\" value=\"");
      out.print(a.getDocid());
      out.write("\">\n");
      out.write("                 <input type=\"hidden\" name=\"appdate\" value=\"");
      out.print(a.getDate());
      out.write("\">\n");
      out.write("                  <input type=\"hidden\" name=\"pharmacy\" value=\"");
      out.print(a.getPharmacy());
      out.write("\">\n");
      out.write("                  \n");
      out.write("                <input type=\"hidden\" name=\"fname\" value=\"");
      out.print(e.getFname());
      out.write("\"> \n");
      out.write("                <input type=\"hidden\" name=\"lname\" value=\"");
      out.print(e.getLname());
      out.write("\">\n");
      out.write("                <input type=\"hidden\" name=\"dob\" value=\"");
      out.print(e.getDob());
      out.write("\">\n");
      out.write("                <input type=\"hidden\" name=\"phoneno\" value=\"");
      out.print(e.getMobileNo());
      out.write("\">\n");
      out.write("                <input type=\"hidden\" name=\"email\" value=\"");
      out.print(e.getEmail());
      out.write("\">\n");
      out.write("                <input type=\"hidden\" name=\"address\" value=\"");
      out.print(e.getAddress());
      out.write("\">\n");
      out.write("                <input type=\"hidden\" name=\"gender\" value=\"");
      out.print(e.getGender());
      out.write("\">\n");
      out.write("                <input type=\"hidden\" name=\"bloodtype\" value=\"");
      out.print(e.getBloodGroup());
      out.write("\">\n");
      out.write("                 <input type=\"hidden\" name=\"pec\" value=\"");
      out.print(e.getPec());
      out.write("\">\n");
      out.write("                 \n");
      out.write("                \n");
      out.write("                 <input type=\"submit\"  value=\"View\">\n");
      out.write("            </form>\n");
      out.write("                    \n");
      out.write("                    \n");
      out.write("                    \n");
      out.write("                    \n");
      out.write("             \n");
      out.write("            \n");
      out.write("            \n");
      out.write("            ");
}
      out.write("     ");
}
      out.write("\n");
      out.write("            </table>\n");
      out.write("            \n");
      out.write("           \n");
      out.write("        \n");
      out.write("        \n");
      out.write("        \n");
      out.write("        \n");
      out.write("        \n");
      out.write("        \n");
      out.write("    </body>\n");
      out.write("</html>\n");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
