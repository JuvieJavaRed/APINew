 /*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.api.model;

import java.util.concurrent.ThreadLocalRandom;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.ws.rs.GET;
import javax.ws.rs.Path;
import javax.ws.rs.Produces;
import javax.ws.rs.QueryParam;
import javax.ws.rs.core.MediaType;

/**
 *
 * @author Sindiso
 */


@Path("/funds")
public class Funds {
    
    private String cvv;
    private String card_number;
    private String amount;
    private String date;
    Database db = new Database();
    
    @GET
    @Produces(MediaType.TEXT_PLAIN)
    public String make_payment(@QueryParam("cvv") String cvv, @QueryParam("card_number") String card_number, @QueryParam("amount") String amount,@QueryParam("date_payment") String date_payment, @QueryParam("business") String business, @QueryParam("card_name") String card_name){
        int transaction_id = ThreadLocalRandom.current().nextInt(10000, 100000);
       System.out.print(transaction_id);
       String query = "INSERT INTO payments_made (cvv, card_number, amount, date_payment, business, card_name, transaction_id) VALUES ('"+cvv+"','"+card_number+"','"+amount+"','"+date_payment+"','"+business+"','"+card_name+"','"+transaction_id+"')";
        try{
          db.insert_db(query);
        }catch(Exception ex){
           Logger.getLogger(Database.class.getName()).log(Level.SEVERE, null, ex); 
        }
       return " you sent this cvv " + cvv + "from card number" + card_number + "of amount" + amount;
   
    }
}
