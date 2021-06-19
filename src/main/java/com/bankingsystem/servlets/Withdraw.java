/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.bankingsystem.servlets;

import com.bankingsystem.dao.CustomerDao;
import com.bankingsystem.entities.Customer;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Awanish kumar singh
 */
public class Withdraw extends HttpServlet {

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

            int id = Integer.parseInt(request.getParameter("id"));
            int customerid = Integer.parseInt(request.getParameter("customerid"));
            int amount = Integer.parseInt(request.getParameter("amount"));

            HttpSession session = request.getSession();

            Customer customer = CustomerDao.getCustomerbyID(customerid);

            if (customer == null) {
                    
                session.setAttribute("message", "Customer is not present in the bank.");
                
                
            } else if (amount == 0) {
                session.setAttribute("message", "Enter a number greater than 0");
                
            } else {
                if (id == 1) {
                    CustomerDao.deposit(customerid, amount);
                    session.setAttribute("message", "Succeessfully deposited amount " + amount + "to customer id : " + customerid);
                } else if (id == 2) {
                    boolean withdraw = CustomerDao.withdraw(customerid, amount);
                    if (withdraw == true) {
                        session.setAttribute("message", "Succeessfully withdrawn amount " + amount + "to customer id : " + customerid);

                    } else {

                        session.setAttribute("message", "not enough money in the account. ");

                    }

                } else {
                    session.setAttribute("message", "something went wrong..");
                }

            }
            
            response.sendRedirect("adminuser.jsp");

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
