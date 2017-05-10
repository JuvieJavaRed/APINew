/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.api.model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author Sindiso
 */
public class Database {
    String database_name;
    static Connection conn;
    
    public Database(){
        connect_db();
    }
    
  
    
    public static  void connect_db(){      
        //0. REGISTER MYSQL JDBC DRIVER
        try {
            Class.forName("com.mysql.jdbc.Driver").newInstance();
       
            String url = "jdbc:mysql://localhost:3306/payment1";
            String uName = "root";
            String uPass = "";
				
            conn = DriverManager.getConnection( url , uName, uPass);
            System.out.println("connected successfully");
					   
	 }	 
	 catch ( Exception err) {
	    System.out.println ( err.getMessage( ));
	
	}
    }
    
    public void update_db(String query){
        try {
            Statement stmt = conn.createStatement();
            stmt.executeUpdate(query);
            System.out.println("Updated records into the table...");
        } catch (SQLException ex) {
           Logger.getLogger(Database.class.getName()).log(Level.SEVERE, null, ex);
       }
    }

    public void insert_db(String query){
        try {
            System.out.println("Creating statement..."); 
            Statement stmt = conn.createStatement();
            stmt.executeUpdate(query);
            System.out.println("Inserted records into the table...");  
      } catch (SQLException ex) {
           Logger.getLogger(Database.class.getName()).log(Level.SEVERE, null, ex);
           System.out.println("nigga you aint done shit");
       }

    }

    public void delete (String query){
         try {
              Statement stmt = conn.createStatement();
              stmt.executeUpdate(query);
              
             System.out.println("Records have been deleted");
             conn.close();
      } catch (SQLException ex) {
           Logger.getLogger(Database.class.getName()).log(Level.SEVERE, null, ex);
       }

    }
    
     public ResultSet select_db(String query){
        try {
            Statement stmt = conn.createStatement();
            ResultSet rs = stmt.executeQuery(query);
            System.out.println("Records have been retrieved...");
            return rs; 
       } catch (SQLException ex) {
           Logger.getLogger(Database.class.getName()).log(Level.SEVERE, null, ex);
           return null;
       }
    }
     
}
