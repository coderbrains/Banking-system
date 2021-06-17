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
public class LoginServlet extends HttpServlet {

   
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            
            HttpSession http = request.getSession();
            
            try{
                
                String email = request.getParameter("email");
                String password = request.getParameter("password");
                out.println(email);
                out.println(password);
                
                Customer customer = CustomerDao.getCustomer(email, password);
                if(customer == null){
                    http.setAttribute("message", "Check your credentials again.");
                    response.sendRedirect("Login.jsp");
                }else{
                    http.setAttribute("currentuser", customer);
                    if(customer.getUserType().equals("normal")){
                        response.sendRedirect("normaluser.jsp");
                    }else{
                        response.sendRedirect("adminuser.jsp");
                    }
                }
                
                
            }catch(Exception e){
                http.setAttribute("message", "Sorry ! something went wrong..");
                e.printStackTrace();
                response.sendRedirect("Login.jsp");
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
