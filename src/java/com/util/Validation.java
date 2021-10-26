package com.util;


import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

//
public class Validation {
    public static boolean ValidateUser(String sname, String spass){
        boolean bstate = false;
        try {
            Class.forName("org.apache.derby.jdbc.EmbeddedDriver");
            
            Connection con = DriverManager.getConnection
        ("jdbc:derby://localhost:1527/UOC","app","app");
            
            PreparedStatement ps = con.prepareStatement
        ("select*from student where email=? and password=?");
            ps.setString(1, sname);
            ps.setString(2, spass);
            ResultSet rs = ps.executeQuery();
            bstate = rs.next();
        } catch (Exception e) {
            e.printStackTrace();
        }return bstate;
    
    }
    
}
