/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.api.model;

import static java.lang.Integer.parseInt;
import java.sql.ResultSet;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author Sindiso
 */
public class Details {
    private String email;
    private int token_number;
    private String password;
    Database db = new Database();
    
    public String getEmail(){
        return email;
    }
    
    public int getToken_number(){
        return token_number;
    }
    
    public String getPassword(){
        return password;
    }
    
    public void insert_user(String email, String password, int token_number){
        String query = "INSERT INTO user2 (email, password, token_number) VALUES ('"+email+"','"+password+"','"+token_number+"')";
        try{
          db.insert_db(query);
        }catch(Exception ex){
           Logger.getLogger(Database.class.getName()).log(Level.SEVERE, null, ex); 
        }
    }
    
    public Details get_email(String email){
        String query = "SELECT * FROM user2 WHERE email='"+email+"'";
        Details d = new Details();
        try{
            ResultSet rs = db.select_db(query);
            while(rs.next()){
                d.email =rs.getString("email");
                d.token_number = parseInt(rs.getString("token_number"));
                System.out.print(d);
                return d;
            }
        }catch(Exception ex){
           Logger.getLogger(Database.class.getName()).log(Level.SEVERE, null, ex); 
        }
       return null; 
    } 
    
 }
