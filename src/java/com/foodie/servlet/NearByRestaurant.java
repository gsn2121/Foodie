/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.foodie.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.sql.*;
import com.foodie.*;
import javax.servlet.http.HttpSession;
/**
 *
 * @author compaq
 */
public class NearByRestaurant extends HttpServlet {

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
        String city = request.getParameter("city");
        String area = request.getParameter("area");
        HttpSession session = request.getSession(true);
        try
        {
            Connection c = ConnectionClass.getConnected();
            if(c!=null)
            {
               PreparedStatement ps =  c.prepareStatement("select * from restaurant_detail where restaurant_city=?");
               city= city.trim();
               ps.setString(1, city);
               ResultSet rs= ps.executeQuery();
                System.out.println("haahhahah1");
               if(rs.next())//If the city is valid
               {
                   System.out.println("haahhahah2");
                   session.setAttribute("getCity", city);
                   session.setAttribute("getArea",area);
                   response.sendRedirect("NearbyRestaurants_Page.jsp");
               }
               else
               {
                   session.setAttribute("msg", "false"); // Not a valid city
                   response.sendRedirect("index.jsp");
               }
            }
            else
            {
                System.out.println("Connection Problem");
            }
        }
        catch(Exception e)
        {
            System.out.println("Excetion in NearByRestaurants Servlet is"+e.toString());
        }
//        String dish_name,restaurant_name,dish_id;
//        int rid;
//        double prize;
//            HttpSession session = request.getSession(true);
//        try
//        {
//            Connection c = ConnectionClass.getConnected();
//            if(c!=null)
//            {
//               PreparedStatement ps =  c.prepareStatement("select * from restaurant_detail where restaurant_city=?");
//               city= city.trim();
//               ps.setString(0, city);
//               ResultSet rs= ps.executeQuery();
//               while(rs.next())
//               {
//                   rid = rs.getInt(0);
//                   PreparedStatement ps1 =  c.prepareStatement("SELECT * FROM menu WHERE rid=?");
//                   ps1.setInt(0, rid);
//                   ResultSet rs1 = ps1.executeQuery();
//                   PreparedStatement ps2 =  c.prepareStatement("SELECT name FROM RESTAURANT WHERE rid=?");
//                   ps2.setInt(0, rid);
//                   ResultSet rs2 = ps2.executeQuery();
//                   if(rs2.next())
//                   {
//                       restaurant_name=rs2.getString(0);
//                   }
//                   while(rs1.next())
//                   { 
//                       dish_id = rs1.getString(2);
//                   }
//               }
//               
//            }
//            else
//            {
//                session.setAttribute("msg", "Something Went Wrong");
//                response.sendRedirect("index.jsp");
//            }
//        }
//        catch(Exception e)
//        {
//            System.err.println("Exception "+e.toString());
//        }
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
