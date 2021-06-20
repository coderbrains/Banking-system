package com.bankingsystem.servlets;

import com.bankingsystem.dao.CustomerDao;
import com.bankingsystem.dao.TransactionDao;
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
public class SendMoney extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {

            int id = Integer.parseInt(request.getParameter("id"));
            HttpSession session = request.getSession();
            Customer customer = (Customer) session.getAttribute("currentuser");

            if (id == 1) {
                String adhar = request.getParameter("adhar");
                int amount = Integer.parseInt(request.getParameter("amount"));
                if (adhar.length() != 12) {
                    session.setAttribute("message", "Adhar number is of 12 digit only. Please enter valid adhar number.");
                    response.sendRedirect("normaluser.jsp");
                } else if (amount <= 0) {
                    session.setAttribute("message", "Please Enter a valid amount greater than 0");
                    response.sendRedirect("normaluser.jsp");
                } else if (customer.getAmount() < amount) {
                    session.setAttribute("message", "not enough balance in the account.");
                    response.sendRedirect("normaluser.jsp");
                } else {
                    int senderamount = customer.getAmount();
                    boolean b = TransactionDao.sendAdhar(adhar, amount);

                    
//                    session.setAttribute("message", senderamount + " " + b);
//                    response.sendRedirect("normaluser.jsp");
                    
                    System.out.println(b);
                    if (b == false) {
                       session.setAttribute("message", "User not found in the db");
                       response.sendRedirect("normaluser.jsp");
            
                        
                    } else {
                        CustomerDao.updatebalance(customer, amount);
                        session.setAttribute("message", "successfully sent");
                        response.sendRedirect("normaluser.jsp");

                    }
                }
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
