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
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

/**
 *
 * @author Awanish kumar singh
 */
@MultipartConfig
public class AccountCreate extends HttpServlet {

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

            try {

                String name = request.getParameter("name");
                String mobile = request.getParameter("mobile");
                String aadhar = request.getParameter("adhar");
                int age = Integer.parseInt(request.getParameter("age"));
                String city = request.getParameter("city");
                String state = request.getParameter("state");
                String email = request.getParameter("email");
                String pan = request.getParameter("pan");
                String password = request.getParameter("password");
                Part part = request.getPart("image");
                String pic = part.getSubmittedFileName();
                String pin = request.getParameter("pin");

                Customer customer = new Customer();

                customer.setAadhar_number(aadhar);
                customer.setAge(age);
                customer.setCity_name(city);
                customer.setEmail(email);
                customer.setMobile(mobile);
                customer.setName(name);
                customer.setPan_number(pan);
                customer.setPassword(password);
                customer.setPic_name(pic);
                customer.setPincode(pin);
                customer.setUserType("normal");
                customer.setState_name(state);
                
                boolean saveCustomer = CustomerDao.saveCustomer(customer);
                out.println(saveCustomer);
//                out.println(name);
//                out.println(email);
//                out.println(pan);
//                out.println(mobile);
//                out.println(aadhar);
//                out.println(pic);
//                out.println(pin);
//                out.println(state);
//                out.println(city);
//                out.println(password);
//                out.println(age);
            } catch (Exception e) {
                e.printStackTrace();
            }
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
