/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.api.model;

import java.sql.ResultSet;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author Sindiso
 */
public class Company {
    private String trading_name;
    private String registered_name;
    private String description;
    private String email;
    private String phone;
    private String shipping_address;
    private String business_entity;
    private String company_website;
    private String tax_number;
    private String trading_country;
    private String company_id;
    private String ceo_id;
    Database db = new Database();
    
    public String getCompany_id(){
        return company_id;
    }
    
    public String getRegistered_name(){
        return registered_name;
    }
    
    public String getEmail(){
        return email;
    }
    
    public void insert_company(String email, String phone, String trading_name, String registered_name, String description, String business_entity, String start_year, String tax_number, String company_website, String shipping_address, String trading_country){
        String query = "INSERT INTO user (email, phone, trading_name, registered_name, description, business_entity, start_year, tax_number, company_website, shipping_address, trading_country) VALUES ('"+email+"','"+phone+"','"+trading_name+"','"+registered_name+"','"+description+"','"+business_entity+"','"+start_year+"','"+tax_number+"','"+company_website+"','"+shipping_address+"','"+trading_country+"')";
        try{
          db.insert_db(query);
        }catch(Exception ex){
           Logger.getLogger(Database.class.getName()).log(Level.SEVERE, null, ex); 
        }
    }
    
     public Company get_companyid(String email){
        String query = " SELECT * FROM user WHERE email ='"+email+"'";
        Company c = new Company();
        try{
            ResultSet rs = db.select_db(query);
            while(rs.next()){
                c.company_id =rs.getString("company_id");
                c.email = rs.getString("email");
                
                return c;
            }
        }catch(Exception ex){
           Logger.getLogger(Database.class.getName()).log(Level.SEVERE, null, ex); 
        }
       return null; 
    }
     
      public Company get_companydets(String company_id){
        String query = "SELECT * FROM user WHERE company_id ='"+company_id+"'";
        Company c = new Company();
        try{
            ResultSet rs = db.select_db(query);
            while(rs.next()){
                c.company_id =rs.getString("company_id");
                c.registered_name = rs.getString("registered_name");
                c.email = rs.getString("email");
                return c;
            }
        }catch(Exception ex){
           Logger.getLogger(Database.class.getName()).log(Level.SEVERE, null, ex); 
        }
       return null; 
    } 
}
