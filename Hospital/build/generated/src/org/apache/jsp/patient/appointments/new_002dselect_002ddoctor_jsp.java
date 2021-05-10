package org.apache.jsp.patient.appointments;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.util.List;
import model.Doctor;
import model.DBConnection;

public final class new_002dselect_002ddoctor_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("</head>\n");
      out.write("\n");
      out.write("<body style=\"background: rgb(255,255,255);\">\n");
      out.write("    <nav class=\"navbar navbar-light navbar-expand-md\" id=\"mainNav\" style=\"background: #333333;\">\n");
      out.write("        <div class=\"container\"><a class=\"navbar-brand js-scroll-trigger\" href=\"#\">Brand</a><button data-toggle=\"collapse\" class=\"navbar-toggler navbar-toggler-right\" data-target=\"#navbarResponsive\" type=\"button\" aria-controls=\"navbarResponsive\" aria-expanded=\"false\" aria-label=\"Toggle navigation\" value=\"Menu\"><i class=\"fa fa-bars\"></i></button>\n");
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
      out.write("    <div class=\"container\" style=\"height: 753px;\">\n");
      out.write("        \n");
      out.write("        \n");
      out.write("        ");

            
                String doctype = request.getParameter("doctype");
                
     
      out.write("\n");
      out.write("     \n");
      out.write("      \n");
      out.write("        \n");
      out.write("        <div class=\"row\" style=\"margin: 19px;\">\n");
      out.write("            <div class=\"col text-center\" style=\"margin-top: 18px;height: 40px;\">\n");
      out.write("                <h1 style=\"color: rgb(0,0,0);font-size: 21px;\">    Select Doctor&nbsp;&nbsp;</h1> \n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("     <form method=\"post\" action=\"new-select-datetime.jsp\">\n");
      out.write("         <input type=\"hidden\" name=\"doctype\" value=\"");
      out.print(doctype);
      out.write("\">\n");
      out.write("         \n");
      out.write("        <div class=\"row\" style=\"margin: 19px;\">\n");
      out.write("            <div class=\"col\"> ");
List<Doctor> list = DBConnection.getDoctors(doctype); 
      out.write("\n");
      out.write("            ");
for(Doctor dr1:list){ 
      out.write(" \n");
      out.write("                <div class=\"row\" style=\"margin-top: 5px;margin-bottom: 10px;\">\n");
      out.write("                    \n");
      out.write("                        \n");
      out.write("                        <div class=\"col text-center\"><button class=\"btn btn-light btn-block text-capitalize\" type=\"submit\" name=\"docid\"  value=\"");
      out.print(dr1.getDocid() );
      out.write("\" style=\"border-radius: 5px;height: 50px;border: 1px solid #bababa ;\">");
      out.print( dr1.getFname() );
      out.write(' ');
      out.write(' ');
      out.print( dr1.getLname() );
      out.write("  <input type=\"hidden\" name=\"docname\" value=\"");
      out.print( dr1.getFname() );
      out.write(' ');
      out.write(' ');
      out.print( dr1.getLname() );
      out.write("\"></button></div>\n");
      out.write("                    </form>\n");
      out.write("                </div> ");
}
      out.write("\n");
      out.write("            </div>\n");
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
