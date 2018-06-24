/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.foodie;
import java.sql.*;
/**
 *
 * @author compaq
 */
public class ConnectionClass 
{
    static Connection c= null;
    public static Connection getConnected()
    {
        try{
        Class.forName("com.mysql.jdbc.Driver");
        c=DriverManager.getConnection("jdbc:mysql://localhost:3306/foodie1","root", "password");
        }
        catch(Exception e)
        {
            System.out.println("Connection Error is"+e.toString());
        }
        return c;
    }
}
