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
public class Contact {
    private String title ;       
    private String name;
    private String surname;
    private String phone;
    private String company_id;
    private String person_id;
    Database db = new Database();
    
    public String getCompany_id(){
        return company_id;
    }
    
    public void insert_user(String title, String name, String surname, String phone, String company_id){
        String query = "INSERT INTO contact_person (title, name, surname, phone, company_id) VALUES ('"+title+"','"+name+"','"+surname+"','"+phone+"','"+company_id+"')";
        try{
          db.insert_db(query);
        }catch(Exception ex){
           Logger.getLogger(Database.class.getName()).log(Level.SEVERE, null, ex); 
        }
    }
    
     public Contact get_companyid(String company_id){
        String query = "SELECT *FROM contact_person WHERE company_id ='"+company_id+"'";
        Contact c = new Contact();
        try{
            ResultSet rs = db.select_db(query);
            while(rs.next()){
                c.company_id =rs.getString("company_id");
                
                return c;
            }
        }catch(Exception ex){
           Logger.getLogger(Database.class.getName()).log(Level.SEVERE, null, ex); 
        }
       return null; 
    }
}
