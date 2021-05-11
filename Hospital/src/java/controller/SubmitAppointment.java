/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package controller;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import model.DBConnection;

/**
 *
 * @author PC
 */
public class SubmitAppointment extends HttpServlet {

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
      
      int pid = Integer.parseInt(request.getParameter("patientid"));
      int docid = Integer.parseInt(request.getParameter("docid"));
      String date=request.getParameter("date");
      String time=request.getParameter("time");
      int lineno = Integer.parseInt(request.getParameter("lineno"));
      String pharmacy=request.getParameter("pharmacy");
      
      
      
      if (!"Yes".equals(pharmacy))
      {
          pharmacy="No";
      }
      

//      out.println(pid);
//      out.println(docid);
//      out.println(date);
//      out.println(time);
//      out.println(lineno);
//      out.println(pharmacy);
     String statu;
    
      
     try{
          DBConnection con = new DBConnection();
          boolean rslt=con.AddAppointment(lineno,pid,docid,date,time,pharmacy);
          if(rslt==true)
          {
              statu="Appointment Added Successfully!";
              
              HttpSession session = request.getSession();
              session.setAttribute("statu",statu);
              response.sendRedirect("patient/appointments/status.jsp");
              out.println("Added Successfully");
             // out.println("<html><head></head><body><br><a href='hospital/doctor/appointments_list.jsp'>Back to Appointments </a> </body></html>");
             
            
              
          }
          else
          {
              statu="Something Went Wrong";
              HttpSession session = request.getSession();
              session.setAttribute("statu",statu);
              response.sendRedirect("patient/appointments/status.jsp");
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
