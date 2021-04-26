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
import model.DBConnection;

/**
 *
 * @author PC
 */
public class SubmitDiagnosisPrescription extends HttpServlet {

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
      int docid = Integer.parseInt(request.getParameter("doctorid"));
      String diagnosis=request.getParameter("diagnosis");
      String prsc=request.getParameter("prescription");
      String date=request.getParameter("date");
      
//      out.println(pid);
//      out.println(docid);
//      out.println(diagnosis);
//      out.println(prsc);
//      out.println(date);
//      
      try{
          DBConnection con = new DBConnection();
          boolean rslt=con.addDiagnosisPrescriptions(pid, docid, prsc, diagnosis, date);
          if(rslt==true)
          {
              out.println("Added Successfully");
              out.println("<html><head></head><body><br><a href='doctor/appointment.jsp'>Back to Appointments </a> </body></html>");
//              RequestDispatcher rs= request.getRequestDispatcher("doctor/appointment.jsp");
//              rs.include(request, response);
              
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
