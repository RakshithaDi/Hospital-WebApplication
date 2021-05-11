package org.apache.jsp.hospital.admin;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class status_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("</head>\n");
      out.write("\n");
      out.write("<body style=\"background: #dddddd;\">\n");
      out.write("    \n");
      out.write("\n");
      out.write("    \n");
      out.write("    \n");
      out.write("    <nav class=\"navbar navbar-light navbar-expand-md d-flex d-xl-flex align-items-center align-content-center align-self-center mx-auto justify-content-xl-center align-items-xl-center navigation-clean-search\">\n");
      out.write("        <div class=\"container\"><a class=\"navbar-brand\" href=\"#\"><i class=\"fas fa-hospital\" style=\"font-size: 25px;\"></i></a><button data-toggle=\"collapse\" class=\"navbar-toggler\" data-target=\"#navcol-1\"><span class=\"sr-only\">Toggle navigation</span><span class=\"navbar-toggler-icon\"></span></button>\n");
      out.write("            <div class=\"collapse navbar-collapse\" id=\"navcol-1\">\n");
      out.write("                <ul class=\"navbar-nav\">\n");
      out.write("                    <li class=\"nav-item\"><a class=\"nav-link\" data-bss-hover-animate=\"pulse\" href=\"#\"><strong style=\"font-family: Montserrat, sans-serif;\">Create Accounts</strong></a></li>\n");
      out.write("                    <li class=\"nav-item\"><a class=\"nav-link\" data-bss-hover-animate=\"pulse\" href=\"feedback.jsp\" style=\"font-family: Montserrat, sans-serif;\">Feedback</a></li>\n");
      out.write("                </ul>\n");
      out.write("            </div>\n");
      out.write("            <div class=\"dropdown menu_links\"><a class=\"dropdown-toggle\" aria-expanded=\"false\" data-toggle=\"dropdown\" style=\"margin-right: 10px;color: rgb(0,0,0,0.75);border-color: rgba(0,0,0,0);font-family: Montserrat, sans-serif;\"></a>\n");
      out.write("                <div class=\"dropdown-menu\"><a class=\"dropdown-item\" href=\"#\">Logout</a></div>\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("    </nav>\n");
      out.write("    \n");
      out.write("    \n");
      out.write("    <div class=\"container-fluid\" style=\"height: 618px;\">\n");
      out.write("        <div class=\"row\">\n");
      out.write("            <div class=\"col-md-4\">\n");
      out.write("               \n");
      out.write("            </div>\n");
      out.write("           \n");
      out.write("            <div class=\"col-md-4\">\n");
      out.write("                \n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("    </div>\n");
      out.write("    <div class=\"container\" style=\"height: 261px;\">\n");
      out.write("        <div class=\"row\">\n");
      out.write("            <div class=\"col-md-12\" style=\"padding: 18px;\">\n");
      out.write("                <div class=\"alert alert-danger alert-dismissible\" role=\"alert\"><button type=\"button\" class=\"close\" data-dismiss=\"alert\" aria-label=\"Close\"><span aria-hidden=\"true\">×</span></button><span><strong>Alert</strong> text.</span></div>\n");
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
