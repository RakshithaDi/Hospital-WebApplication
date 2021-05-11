package org.apache.jsp.hospital.doctor;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import model.Doctor;
import model.Patient;
import java.util.List;
import model.Appointments;
import model.DBConnection;

public final class appointment_005flist_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("<html lang=\"en\">\n");
      out.write("\n");
      out.write("<head>\n");
      out.write("    <meta charset=\"utf-8\">\n");
      out.write("    <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0, shrink-to-fit=no\">\n");
      out.write("    <title>hospital</title>\n");
      out.write("    <link rel=\"stylesheet\" href=\"../assets/bootstrap/css/bootstrap.min.css\">\n");
      out.write("    <link rel=\"stylesheet\" href=\"https://fonts.googleapis.com/css?family=Montserrat:400,600,700\">\n");
      out.write("    <link rel=\"stylesheet\" href=\"../assets/fonts/fontawesome-all.min.css\">\n");
      out.write("    <link rel=\"stylesheet\" href=\"../assets/fonts/font-awesome.min.css\">\n");
      out.write("    <link rel=\"stylesheet\" href=\"../assets/fonts/ionicons.min.css\">\n");
      out.write("    <link rel=\"stylesheet\" href=\"../assets/fonts/fontawesome5-overrides.min.css\">\n");
      out.write("    <link rel=\"stylesheet\" href=\"../assets/css/Contact-Form-Clean.css\">\n");
      out.write("    <link rel=\"stylesheet\" href=\"../assets/css/Footer-Basic.css\">\n");
      out.write("    <link rel=\"stylesheet\" href=\"../assets/css/Footer-Clean.css\">\n");
      out.write("    <link rel=\"stylesheet\" href=\"https://cdnjs.cloudflare.com/ajax/libs/animate.css/3.5.2/animate.min.css\">\n");
      out.write("    <link rel=\"stylesheet\" href=\"../assets/css/Login-Form-Clean.css\">\n");
      out.write("    <link rel=\"stylesheet\" href=\"../assets/css/Login-Form-Dark.css\">\n");
      out.write("    <link rel=\"stylesheet\" href=\"../assets/css/Navbar-Dropdown-List-Item.css\">\n");
      out.write("    <link rel=\"stylesheet\" href=\"../assets/css/Navigation-with-Button.css\">\n");
      out.write("    <link rel=\"stylesheet\" href=\"../assets/css/Navigation-with-Search.css\">\n");
      out.write("    <link rel=\"stylesheet\" href=\"../assets/css/styles.css\">\n");
      out.write("       <script>\n");
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
      out.write("    \n");
      out.write("    \n");
      out.write("</head>\n");
      out.write("\n");
      out.write("<body style=\"background: #dddddd;\">\n");
      out.write("    \n");
      out.write("          ");

          
        HttpSession se = request.getSession();
        session.setMaxInactiveInterval(3600); //Expires after 30 seconds inactivity
        String username = (String)session.getAttribute("username");
        
        
        
      out.write("\n");
      out.write("    \n");
      out.write("    \n");
      out.write("    <nav class=\"navbar navbar-light navbar-expand-md d-flex d-xl-flex align-items-center align-content-center align-self-center mx-auto justify-content-xl-center align-items-xl-center navigation-clean-search\">\n");
      out.write("        <div class=\"container\"><a class=\"navbar-brand\" href=\"#\"><i class=\"fas fa-hospital\" style=\"font-size: 25px;\"></i></a><button data-toggle=\"collapse\" class=\"navbar-toggler\" data-target=\"#navcol-1\"><span class=\"sr-only\">Toggle navigation</span><span class=\"navbar-toggler-icon\"></span></button>\n");
      out.write("            <div class=\"collapse navbar-collapse\" id=\"navcol-1\">\n");
      out.write("                <ul class=\"navbar-nav\">\n");
      out.write("                    <li class=\"nav-item\"><a class=\"nav-link\" href=\"appointment_list.jsp\" style=\"font-family: Montserrat, sans-serif;\"><strong>Appointment List</strong></a></li>\n");
      out.write("                    <li class=\"nav-item\"><a class=\"nav-link\" href=\"#\" style=\"font-family: Montserrat, sans-serif;\">Home</a></li>\n");
      out.write("                </ul>\n");
      out.write("            </div>\n");
      out.write("            <div class=\"dropdown menu_links\" style=\"font-family: Montserrat, sans-serif;\"><a class=\"dropdown-toggle\" aria-expanded=\"false\" data-toggle=\"dropdown\" style=\"margin-right: 10px;color: rgb(0,0,0,0.75);border-color: rgba(0,0,0,0);\">");
out.println("Hello " + username);
      out.write("  </a>\n");
      out.write("                <div class=\"dropdown-menu\"><a class=\"dropdown-item\" href=\"#\">Logout</a></div>\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("    </nav>\n");
      out.write("    <div class=\"container\" style=\"height: 814px;\">\n");
      out.write("        <br>\n");
      out.write("        <center> <label><b>Find Appointment By ID:</b> <input type=\"text\" name=\"name\"  id=\"myInput\" onkeyup=\"myFunction()\" placeholder=\"  Search by ID.\" title=\"Type in a name\"></label></center>\n");
      out.write("       <br>\n");
      out.write("        <div class=\"col\" style=\"padding: 0px;background: #ffffff;margin: 13px;\">\n");
      out.write("            <div class=\"table-responsive\">\n");
      out.write("                <table class=\"table\" id=\"myTable\">\n");
      out.write("                    <thead>\n");
      out.write("                        <tr class=\"header\">\n");
      out.write("                            <th>Appointment ID</th>\n");
      out.write("                            <th>Name</th>\n");
      out.write("                            <th>Email</th>\n");
      out.write("                            <th>Gender</th>\n");
      out.write("                            <th>DOB</th>\n");
      out.write("                            <th>Appointment Date</th>\n");
      out.write("                            <th>Time</th>\n");
      out.write("                            <th>View</th>\n");
      out.write("                        </tr>\n");
      out.write("                        \n");
      out.write("                        ");
List<Doctor> list2 = DBConnection.getDoctorId(username); 
      out.write("\n");
      out.write("            ");
for(Doctor doc3:list2){ 
      out.write("\n");
      out.write("                        \n");
      out.write("                        \n");
      out.write("            ");
List<Appointments> list = DBConnection.getAppointmentDetails(doc3.getDocid()); 
      out.write("\n");
      out.write("            ");
for(Appointments appo1:list){ 
      out.write("\n");
      out.write("            \n");
      out.write("            \n");
      out.write("             ");
List<Patient> list1 = DBConnection.getAllPatients(appo1.getPid()); 
      out.write("\n");
      out.write("            ");
for(Patient e:list1){ 
      out.write("\n");
      out.write("                        \n");
      out.write("                        \n");
      out.write("                        \n");
      out.write("                    </thead>\n");
      out.write("                    <tbody>\n");
      out.write("                        <tr align=\"center\">\n");
      out.write("                            <td>");
      out.print(appo1.getLineno());
      out.write("</td>\n");
      out.write("                            <td>");
      out.print(e.getFname()+" "+e.getLname());
      out.write("</td>\n");
      out.write("                            <td>");
      out.print(e.getEmail());
      out.write("</td>\n");
      out.write("                            <td> ");
      out.print(e.getGender());
      out.write("</td>\n");
      out.write("                            <td>");
      out.print(e.getDob());
      out.write("</td>\n");
      out.write("                            <td>");
      out.print(appo1.getDate());
      out.write(" </td>\n");
      out.write("                            <td>");
      out.print(appo1.getTime());
      out.write("</td>\n");
      out.write("                            <td>\n");
      out.write("                              \n");
      out.write("                <form method=\"post\" action=\"appointmentcopy.jsp\">\n");
      out.write("                \n");
      out.write("                     <input type=\"hidden\" name=\"patientid\" value=\"");
      out.print(e.getPid());
      out.write("\">\n");
      out.write("                     <input type=\"hidden\" name=\"appid\" value=\"");
      out.print(appo1.getLineno());
      out.write("\">\n");
      out.write("                     <input type=\"hidden\" name=\"docid\" value=\"");
      out.print(appo1.getDocid());
      out.write("\">\n");
      out.write("                     <input type=\"hidden\" name=\"appdate\" value=\"");
      out.print(appo1.getDate());
      out.write("\">\n");
      out.write("                     <input type=\"hidden\" name=\"pharmacy\" value=\"");
      out.print(appo1.getPharmacy());
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
      out.write("                 <button class=\"btn btn-light\" type=\"submit\"><b>View</b></button>\n");
      out.write("                 \n");
      out.write("                 </form>\n");
      out.write("                        </td>\n");
      out.write("                      </tr>\n");
      out.write("                        ");
}
      out.write(' ');
}
      out.write(' ');
}
      out.write("\n");
      out.write("                    </tbody>\n");
      out.write("                </table>\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("    </div>\n");
      out.write("    <footer class=\"footer-basic\">\n");
      out.write("        <div class=\"social\"><a href=\"#\"><i class=\"icon ion-social-instagram\"></i></a><a href=\"#\"><i class=\"icon ion-social-twitter\"></i></a><a href=\"#\"><i class=\"icon ion-social-facebook\"></i></a></div>\n");
      out.write("        <ul class=\"list-inline\">\n");
      out.write("            <li class=\"list-inline-item\"><a href=\"#\" style=\"font-size: 15px;\">Home</a></li>\n");
      out.write("            <li class=\"list-inline-item\"><a href=\"#\" style=\"font-size: 15px;\">Services</a></li>\n");
      out.write("            <li class=\"list-inline-item\"><a href=\"#\" style=\"font-size: 15px;\">About</a></li>\n");
      out.write("            <li class=\"list-inline-item\"><a href=\"#\" style=\"font-size: 15px;\">Terms</a></li>\n");
      out.write("            <li class=\"list-inline-item\"><a href=\"#\" style=\"font-size: 15px;\">Privacy Policy</a></li>\n");
      out.write("        </ul>\n");
      out.write("        <p class=\"copyright\">Company Name © 2021</p>\n");
      out.write("    </footer>\n");
      out.write("    <script src=\"../assets/js/jquery.min.js\"></script>\n");
      out.write("    <script src=\"../assets/bootstrap/js/bootstrap.min.js\"></script>\n");
      out.write("    <script src=\"../assets/js/bs-init.js\"></script>\n");
      out.write("</body>\n");
      out.write("\n");
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
