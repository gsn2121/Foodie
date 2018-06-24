/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.foodie.servlet;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author compaq
 */
public class SignUp extends HttpServlet {

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
            throws ServletException, IOException
    {
        response.setContentType("text/html;charset=UTF-8");
        
        String email=request.getParameter("email");
        System.out.println(email);
        String name=request.getParameter("name");
        System.out.println(name);
        String mobile_no=request.getParameter("mob");
        System.out.println(mobile_no);
        String password=request.getParameter("pass1");
        System.out.println(password);
        HttpSession s=request.getSession(true);
       try
       {
         Connection c=com.foodie.ConnectionClass.getConnected();
         PreparedStatement p=c.prepareStatement("insert into register values(?,?,?,?)");
         p.setString(1, name);
         p.setString(2, email);
         p.setString(3, password);
         p.setString(4,mobile_no);
        
           
         int t=p.executeUpdate();
         System.out.println("11111111111111111111");
         if(t>0)
         {
           request.setAttribute("alertMsg","Registration Successful");
           response.sendRedirect("login.html");
         }
         else{
             
         }
       }
       catch(Exception e)
       {
           System.out.println("Error"+e.toString());
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
        processRequest(request, response);
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
