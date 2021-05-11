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
public class Login extends HttpServlet {

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
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        String usertype = request.getParameter("usertype");
        
//        out.println(usertype);
//        out.println(username);
//        out.println(password);
        
        
      
     
         DBConnection con = new DBConnection();
        if("Doctor".equals(usertype))
        {
          try{
           
            boolean rslt = con.checkDoctor(username,password);
            if(rslt==true)
            {
                out.println("You have succesfully logged!!");
//                RequestDispatcher rs = request.getRequestDispatcher("hospital/doctor/appointments_list.jsp");
//                rs.forward(request, response);
                HttpSession session = request.getSession();
                session.setAttribute("username",username);
                response.sendRedirect("hospital/doctor/appointment_list.jsp");
          
            }
            else
            {
          
               out.println("Username or Password Incorrect");
               out.println("<html><head></head><body><br><a href='hospital/auth/login.html'>Back to Login </a> </body></html>");
            }
            
               }
            catch(Exception e)
            {
            e.printStackTrace();
            }
        }
    
            
        
        else if("Pharmacist".equals(usertype))
        {
            try{
           
            boolean rslt = con.checkPharmacist(username,password);
            if(rslt==true)
            {
                out.println("You have succesfully logged!!");
//                RequestDispatcher rs = request.getRequestDispatcher("");
//                rs.include(request, response);
                 HttpSession session = request.getSession();
                 session.setAttribute("username",username);
                 response.sendRedirect("hospital/pharmacist/order-list.jsp");
            }
            else
            {
                out.println("Username or Password Incorrect");
                out.println("<html><head></head><body><br><a href='hospital/auth/login.html'>Back to Login </a> </body></html>");
            }
            
               }
            catch(Exception e)
            {
            e.printStackTrace();
            }
            
        }
        
            else if("Admin".equals(usertype))
        {
            try{
           
            boolean rslt = con.checkAdmin(username,password);
            if(rslt==true)
            {
                out.println("You have succesfully logged!!");
//                RequestDispatcher rs = request.getRequestDispatcher("");
//                rs.include(request, response);
                 HttpSession session = request.getSession();
                 session.setAttribute("username",username);
                 response.sendRedirect("hospital/admin/accounts.jsp");
            }
            else
            {
                out.println("Username or Password Incorrect");
                out.println("<html><head></head><body><br><a href='hospital/auth/login.html'>Back to Login </a> </body></html>");
            }
            
               }
            catch(Exception e)
            {
            e.printStackTrace();
            }
            
        }
        
        
        
        
        else
        {
            
            try{
           
            boolean rslt = con.checkReceptionist(username,password);
            if(rslt==true)
            {
                out.println("You have succesfully logged!!");
                HttpSession session = request.getSession();
                session.setAttribute("username",username);
                response.sendRedirect("hospital/receptionist/messages.jsp");
            }
            else
            {
                out.println("Username or Password Incorrect");
                out.println("<html><head></head><body><br><a href='hospital/auth/login.html'>Back to Login </a> </body></html>");
            }
            
               }
            catch(Exception e)
            {
            e.printStackTrace();
            }
            
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
