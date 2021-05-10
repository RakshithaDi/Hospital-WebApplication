package org.apache.jsp.patient.appointments;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.util.List;
import model.DBConnection;
import model.Appointments;
import model.DoctorDateTime;

public final class new_002dconfirm_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("\n");
      out.write("<head>\n");
      out.write("    <meta charset=\"utf-8\">\n");
      out.write("    <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0, shrink-to-fit=no\">\n");
      out.write("    <title>patient 2</title>\n");
      out.write("    <link rel=\"stylesheet\" href=\"../assets/bootstrap/css/bootstrap.min.css\">\n");
      out.write("    <link rel=\"stylesheet\" href=\"https://fonts.googleapis.com/css?family=Lora:400,700,400italic,700italic\">\n");
      out.write("    <link rel=\"stylesheet\" href=\"https://fonts.googleapis.com/css?family=Cabin:700\">\n");
      out.write("    <link rel=\"stylesheet\" href=\"../assets/fonts/fontawesome-all.min.css\">\n");
      out.write("    <link rel=\"stylesheet\" href=\"../assets/fonts/font-awesome.min.css\">\n");
      out.write("    <link rel=\"stylesheet\" href=\"../assets/fonts/fontawesome5-overrides.min.css\">\n");
      out.write("    <link rel=\"stylesheet\" href=\"https://cdnjs.cloudflare.com/ajax/libs/animate.css/3.5.2/animate.min.css\">\n");
      out.write("    <link rel=\"stylesheet\" href=\"../assets/css/Login-Form-Clean.css\">\n");
      out.write("    <link rel=\"stylesheet\" href=\"../assets/css/Navbar-Dropdown-List-Item.css\">\n");
      out.write("    \n");
      out.write("    \n");
      out.write("</head>\n");
      out.write("\n");
      out.write("<body style=\"background: #f2f2f2;\">\n");
      out.write("    <nav class=\"navbar navbar-light navbar-expand-md\" id=\"mainNav\" style=\"background: #333333;\">\n");
      out.write("        <div class=\"container\"><a class=\"navbar-brand js-scroll-trigger\" href=\"#\">Central Hospitals</a><button data-toggle=\"collapse\" class=\"navbar-toggler navbar-toggler-right\" data-target=\"#navbarResponsive\" type=\"button\" aria-controls=\"navbarResponsive\" aria-expanded=\"false\" aria-label=\"Toggle navigation\" value=\"Menu\"><i class=\"fa fa-bars\"></i></button>\n");
      out.write("            <div class=\"collapse navbar-collapse\" id=\"navbarResponsive\">\n");
      out.write("                <ul class=\"navbar-nav ml-auto\">\n");
      out.write("                    <li class=\"nav-item nav-link js-scroll-trigger\"><a class=\"nav-link active js-scroll-trigger\" href=\"appointments.html\">Appointments</a></li>\n");
      out.write("                    <li class=\"nav-item nav-link js-scroll-trigger\"><a class=\"nav-link js-scroll-trigger\" data-bss-hover-animate=\"pulse\" href=\"../prescriptions/prescriptions.html\">Prescriptions</a></li>\n");
      out.write("                    <li class=\"nav-item nav-link js-scroll-trigger\"><a class=\"nav-link js-scroll-trigger\" data-bss-hover-animate=\"pulse\" href=\"../chat/messages.html\">Chat</a></li>\n");
      out.write("                    <li class=\"nav-item text-center d-xl-flex justify-content-xl-center align-items-xl-center nav-link js-scroll-trigger\">\n");
      out.write("                        <div class=\"nav-item dropdown d-xl-flex justify-content-xl-center align-items-xl-center menu_links\"><a class=\"dropdown-toggle active\" aria-expanded=\"false\" data-toggle=\"dropdown\" style=\"margin-right: 10px;color: rgba(255,255,255,0.75);border-color: rgba(0,0,0,0);font-size: 25px;font-family: Cabin, sans-serif;text-align: center;\"><i class=\"fa fa-user-o\" style=\"font-size: 24px;\"></i></a>\n");
      out.write("                            <div class=\"dropdown-menu text-center\"><a class=\"dropdown-item\" href=\"#\" style=\"color: rgb(0,0,0);\">Log out</a></div>\n");
      out.write("                        </div>\n");
      out.write("                    </li>\n");
      out.write("                </ul>\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("    </nav>\n");
      out.write("    \n");
      out.write("       ");

            
                String docname = request.getParameter("docname");
                String date = request.getParameter("date");
                String time = request.getParameter("time");
                String docid = request.getParameter("docid");
                
                
                
                DoctorDateTime ddt = new DoctorDateTime();
                     ddt.setDate(date);
                     ddt.setTime(time);
                                  
     
      out.write("\n");
      out.write("     \n");
      out.write("    \n");
      out.write("\n");
      out.write("    <div class=\"container\" style=\"height: 753px;\">\n");
      out.write("        <div class=\"row\" style=\"margin: 19px;\">\n");
      out.write("            <div class=\"col text-center\" style=\"margin-top: 18px;height: 40px;\">\n");
      out.write("                <h1 style=\"color: rgb(0,0,0);font-size: 21px;\">Confirm Your Appointment</h1>\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("        <div class=\"row\" style=\"margin: 19px;\">\n");
      out.write("             <form method=\"post\" action=\"../../SubmitAppointment\">\n");
      out.write("            <div class=\"col mx-auto\">\n");
      out.write("                <div class=\"row\">\n");
      out.write("                     ");
List<Appointments> list = DBConnection.checkAppointments(); 
      out.write("\n");
      out.write("            ");
for(Appointments ap3:list){ 
      out.write("  \n");
      out.write("                    <div class=\"col d-xl-flex align-items-center justify-content-xl-center\">\n");
      out.write("                        <div class=\"card d-xl-flex align-self-center justify-content-xl-center\" style=\"width: 798px;margin: 5px;\">\n");
      out.write("                            <div class=\"card-body\">\n");
      out.write("                                <h4 class=\"card-title\" style=\"color: rgb(0,0,0);padding: 5px;\">Dr. ");
      out.print(docname);
      out.write(" </h4>\n");
      out.write("                                <h6 class=\"text-muted card-subtitle mb-2\" style=\"padding: 5px;\">Date : ");
      out.print(ddt.getDate());
      out.write("</h6>\n");
      out.write("                                <h6 class=\"text-muted card-subtitle mb-2\" style=\"padding: 5px;\">Time : ");
      out.print(ddt.getTime());
      out.write("</h6>\n");
      out.write("                                <h6 class=\"text-muted card-subtitle mb-2\" style=\"padding: 5px;\">No :  ");
      out.print(ap3.getCount());
      out.write(" </h6>\n");
      out.write("                           \n");
      out.write("                            </div>\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("                    <div class=\"form-row\">\n");
      out.write("                        <div class=\"col d-xl-flex align-items-center justify-content-xl-center\">\n");
      out.write("                            <div class=\"card d-xl-flex align-self-center justify-content-xl-center\" style=\"width: 798px;margin: 5px;\">\n");
      out.write("                                <div class=\"card-body\">\n");
      out.write("                                    <div class=\"form-row\">\n");
      out.write("                                        <div class=\"col\">\n");
      out.write("                                           \n");
      out.write("                                                         <input type=\"hidden\" name=\"patientid\" value=\"1\">\n");
      out.write("                                                         <input type=\"hidden\" name=\"docid\" value=\"");
      out.print(docid);
      out.write("\">\n");
      out.write("                                                         <input type=\"hidden\" name=\"lineno\" value=\"");
      out.print(ap3.getCount());
      out.write("\">\n");
      out.write("                                                         <input type=\"hidden\" name=\"date\" value=\"");
      out.print(date);
      out.write("\">\n");
      out.write("                                                         <input type=\"hidden\" name=\"time\" value=\"");
      out.print(time);
      out.write("\">    \n");
      out.write("                                                  \n");
      out.write("                                            <div class=\"form-check\"><input class=\"form-check-input\" type=\"checkbox\" id=\"pharmacy-1\" name=\"pharmacy\" value=\"Yes\" ><label class=\"form-check-label\" for=\"formCheck-1\" style=\"color: rgb(0,0,0);font-family: Cabin, sans-serif;\">Use Central Hospital Pharmacy to Buy Medicine</label></div>\n");
      out.write("                                        </div>\n");
      out.write("                                    </div>\n");
      out.write("                                    <div class=\"form-row\">\n");
      out.write("                                        <div class=\"col\" style=\"height: 20px;\">\n");
      out.write("                                            <p style=\"color: rgb(146,146,146);font-size: 13px;font-family: Cabin, sans-serif;\">When you select this option your prescription will be automatically send to the Pharmacy and you will get an email when it's ready.</p>\n");
      out.write("                                        </div>\n");
      out.write("                                    </div>\n");
      out.write("                                </div>\n");
      out.write("                            </div>\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("                    <div class=\"form-row\">\n");
      out.write("                        <div class=\"col\">\n");
      out.write("                            <div class=\"form-row\">\n");
      out.write("                                <div class=\"col text-center\" style=\"margin: 7px;margin-top: 15px;\"><button class=\"btn btn-primary bg-success border rounded shadow-lg\" type=\"submit\" style=\"color: rgb(255,255,255);background: #003893;\">Confirm&nbsp;&nbsp;<i class=\"fa fa-check\"></i></button></div>\n");
      out.write("                            </div>  \n");
      out.write("                            <div class=\"form-row\">\n");
      out.write("                                <div class=\"col text-center\" style=\"margin: 6px;\"><button class=\"btn btn-primary bg-secondary border rounded\" type=\"button\" style=\"background: #003893;color: rgb(255,255,255);\">Confirm and Pay Online&nbsp;&nbsp;<i class=\"fa fa-angle-double-right\"></i></button></div>\n");
      out.write("                            </div>\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("               \n");
      out.write("            </div> </form> ");
}
      out.write(" \n");
      out.write("        </div>\n");
      out.write("    </div>\n");
      out.write("    <footer style=\"background: #212121;\">\n");
      out.write("        <div class=\"container text-center\"><a href=\"#\" style=\"font-family: Cabin, sans-serif;color: var(--info);margin-right: 10px;margin-left: 10px;\">Privacy Policy</a><a href=\"#\" style=\"font-family: Cabin, sans-serif;color: var(--info);margin-right: 10px;margin-left: 10px;\">About</a><a href=\"#\" style=\"font-family: Cabin, sans-serif;color: var(--info);margin-right: 10px;margin-left: 10px;\">Contact</a><a href=\"../feedback/new-feedback.html\" style=\"font-family: Cabin, sans-serif;color: var(--info);margin-right: 10px;margin-left: 10px;\">Leave Feedback</a></div>\n");
      out.write("        <div class=\"container text-center\">\n");
      out.write("            <p style=\"font-family: Cabin, sans-serif;color: rgb(154,154,154);\">CENTRAL HOSPITALS © 2021</p>\n");
      out.write("        </div>\n");
      out.write("        <div class=\"container text-center\" style=\"font-size: 20px;font-family: Lora, serif;\"><a href=\"#\" style=\"font-family: Cabin, sans-serif;color: var(--info);margin-right: 10px;margin-left: 10px;\"><i class=\"fa fa-facebook-square\" style=\"color: rgb(255,255,255);\"></i></a><a href=\"#\" style=\"font-family: Cabin, sans-serif;color: var(--info);margin-right: 10px;margin-left: 10px;\"><i class=\"fa fa-twitter-square\" style=\"color: rgb(255,255,255);\"></i></a><a href=\"#\" style=\"font-family: Cabin, sans-serif;color: var(--info);margin-right: 10px;margin-left: 10px;\"><i class=\"fa fa-instagram\" style=\"color: rgb(255,255,255);\"></i></a></div>\n");
      out.write("    </footer>\n");
      out.write("    <script src=\"../assets/js/jquery.min.js\"></script>\n");
      out.write("    <script src=\"../assets/bootstrap/js/bootstrap.min.js\"></script>\n");
      out.write("    <script src=\"../assets/js/bs-init.js\"></script>\n");
      out.write("    <script src=\"https://cdnjs.cloudflare.com/ajax/libs/jquery-easing/1.4.1/jquery.easing.min.js\"></script>\n");
      out.write("    <script src=\"../assets/js/grayscale.js\"></script>\n");
      out.write("</body>\n");
      out.write("\n");
      out.write("</html>");
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
