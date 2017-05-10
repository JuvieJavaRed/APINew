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
public class Ceo {
   private String name;
   private String surname;
   private String company_id;
   private String ceo_id;
   private String id_number;
   Database db = new Database();
   
   public String getCompany_id(){
        return company_id;
    }
   
   public void insert_ceo(String name, String surname, String id_number, String company_id){
        String query = "INSERT INTO ceo_details (name, surname, id_number, company_id) VALUES ('"+name+"','"+surname+"','"+id_number+"','"+company_id+"')";
        try{
          db.insert_db(query);
        }catch(Exception ex){
           Logger.getLogger(Database.class.getName()).log(Level.SEVERE, null, ex); 
        }
    }
   
    public Ceo acquire_companyid(String company_id){
        String query = " SELECT * FROM ceo_details WHERE company_id ='"+company_id+"'";
        Ceo c = new Ceo();
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


