/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package controller;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.DBConnection;

/**
 *
 * @author PC
 */
public class PatientRegistration extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */

        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
         response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
 
       
        String fname=request.getParameter("fname");
        String lname=request.getParameter("lname");
        String email=request.getParameter("email");
        int phoneno = Integer.parseInt(request.getParameter("phoneno"));
        String password=request.getParameter("confirmpassword");
        String gender=request.getParameter("gender");
        String bloodgroup=request.getParameter("bloodgroup");
        String dob=request.getParameter("dob");
        String address=request.getParameter("address");
        String pec=request.getParameter("pec");
        
        
        out.println(fname);
        out.println(lname);
        out.println(email);
        out.println(phoneno);
        out.print(password);
        out.println(gender);
        out.println(bloodgroup);
        out.println(dob);
        out.println(address);
        out.println(pec);
     

        
        try{
          DBConnection con = new DBConnection();
          boolean rslt=con.RegPatient(fname,lname,email,phoneno,password,gender,bloodgroup,dob,address,pec);
          if(rslt==true)
          {
              out.println("Registration Successfully");
            //  out.println("<html><head></head><body><br><a href='hospital/doctor/appointments_list.jsp'>Back to Appointments </a> </body></html>");
//              RequestDispatcher rs= request.getRequestDispatcher("hospital/doctor/appointments_list.jsp");
//              rs.forward(request, response);
              
          }
          else
          {
              out.println("Error");
          }
      }
      catch(Exception e){
          e.printStackTrace();
      }
        
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
