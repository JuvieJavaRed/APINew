/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.api.controller;

import com.api.model.Company;
import com.api.model.Database;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Sindiso
 */
public class UploadCompanyController extends HttpServlet {

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
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet UploadCompanyController</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet UploadCompanyController at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
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
         //processRequest(request, response);
        RequestDispatcher rd = null;
        Company c = new Company();
        String trading_name = request.getParameter("trading_name");
        String registered_name = request.getParameter("registered_name");
        String email = request.getParameter("email");
        String description = request.getParameter("description");
        String phone= request.getParameter("phone");
        String shipping_address = request.getParameter("shipping_address");
        String tax_number = request.getParameter("tax_number");
        String start_year = request.getParameter("start_year");
        String trading_country = request.getParameter("trading_country");
        String company_website = request.getParameter("company_website");
        
        try{
           c.insert_company(email, phone, trading_name, registered_name, description, trading_country, start_year, tax_number, company_website, shipping_address, trading_country);
           Company company = c.get_companyid(email);
           request.setAttribute("company", company);
           rd = request.getRequestDispatcher("/ceo_details.jsp");
               rd.forward(request, response);
        }catch(Exception ex){
             Logger.getLogger(Database.class.getName()).log(Level.SEVERE, null, ex);
             rd = request.getRequestDispatcher("/error.jsp");
                rd.forward(request, response);
        }
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
