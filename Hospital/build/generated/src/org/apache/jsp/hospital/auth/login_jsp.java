package org.apache.jsp.hospital.auth;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class login_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("    \n");
      out.write("\n");
      out.write("</head>\n");
      out.write("\n");
      out.write("<body style=\"background: url(&quot;../assets/img/pexels-tara-winstead-7722646.jpg&quot;) center / contain;\">\n");
      out.write("    ");
 response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");
      out.write("\n");
      out.write(" \n");
      out.write("    <section class=\"login-dark\" style=\"background: url(&quot;../assets/img/pexels-tara-winstead-7722646.jpg&quot;) center / cover, rgb(71, 93, 98);opacity: 1;transform: perspective(0px);\">\n");
      out.write("        <form method=\"post\" action=\"../../Login\" style=\"background: rgb(248,248,248);\">\n");
      out.write("            <div class=\"text-center\"><span>t<i class=\"fa fa-hospital-o\" style=\"color: rgb(41,41,41);font-size: 31px;\"></i></span><br>\n");
      out.write("                <h4 class=\"text-center\" style=\"color: rgb(57,57,57);font-size: 18px;\">Welcome to the Central Hospital Digital Work Area</h4><br>\n");
      out.write("                <h4 class=\"text-center\" style=\"color: rgb(84,84,84);font-size: 18px;\">Log in to continue</h4>\n");
      out.write("            </div>\n");
      out.write("            <div class=\"form-group\"><input class=\"border rounded-0 form-control\" type=\"text\" name=\"username\" placeholder=\"Username\" style=\"color: rgb(0,0,0);height: 45px;\" required=\"\"></div>\n");
      out.write("            <div class=\"form-group\"><input class=\"border rounded-0 form-control\" type=\"password\" name=\"password\" placeholder=\"Password\" style=\"color: rgb(0,0,0);height: 45px;\" required=\"\"></div>\n");
      out.write("            <div class=\"form-group\">\n");
      out.write("                <div class=\"form-check\"><input class=\"form-check-input\" type=\"radio\" id=\"usertype\" name=\"usertype\" value=\"Admin\"><label class=\"form-check-label\" for=\"formCheck-3\" style=\"color: rgb(0,0,0);\">Admin</label></div>\n");
      out.write("                <div class=\"form-check\"><input class=\"form-check-input\" type=\"radio\" id=\"usertype\" name=\"usertype\" value=\"Doctor\"> <label class=\"form-check-label\" for=\"formCheck-1\" style=\"color: rgb(0,0,0);\">Doctor&nbsp;</label></div>\n");
      out.write("                <div class=\"form-check\"><input class=\"form-check-input\" type=\"radio\" id=\"usertype\" name=\"usertype\" value=\"Pharmacist\"><label class=\"form-check-label\" for=\"formCheck-2\" style=\"color: rgb(0,0,0);\">Pharmacist</label></div>\n");
      out.write("                <div class=\"form-check\"><input class=\"form-check-input\" type=\"radio\" id=\"usertype\" name=\"usertype\" value=\"Receptionist\"><label class=\"form-check-label\" for=\"formCheck-3\" style=\"color: rgb(0,0,0);\">Receptionist</label></div>\n");
      out.write("            </div>\n");
      out.write("            <div class=\"form-group\"><button class=\"btn btn-primary btn-block\" type=\"submit\" style=\"background: var(--blue);\">LOG IN</button></div><a class=\"forgot\" href=\"#\">Forgot your email or password?</a><br>\n");
      out.write("            <div class=\"alert alert-danger alert-dismissible\" role=\"alert\"><button type=\"button\" class=\"close\" data-dismiss=\"alert\" aria-label=\"Close\"><span aria-hidden=\"true\">×</span></button><span><strong>Alert</strong> text.</span></div>\n");
      out.write("        </form>\n");
      out.write("    </section>\n");
      out.write("    <script src=\"../assets/js/jquery.min.js\"></script>\n");
      out.write("    <script src=\"../assets/bootstrap/js/bootstrap.min.js\"></script>\n");
      out.write("    <script src=\"../assets/js/bs-init.js\"></script>\n");
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
