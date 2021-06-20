package com.bankingsystem.servlets;

import com.bankingsystem.dao.CustomerDao;
import com.bankingsystem.dao.TransactionDao;
import com.bankingsystem.entities.Customer;
import com.bankingsystem.entities.Transaction;
import com.bankingsystem.helper.FactoryProvider;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.Date;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import org.hibernate.Session;

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
            int amount = 0;
            Customer receiver= null;

            if (id == 1) {
                String adhar = request.getParameter("adhar");
                amount = Integer.parseInt(request.getParameter("amount"));
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
                    receiver= CustomerDao.getCustomerByAdhar(adhar);
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
            } else if (id == 2) {

                String mobile = request.getParameter("mobile");
                amount = Integer.parseInt(request.getParameter("amount"));
                if (mobile.length() != 10) {
                    session.setAttribute("message", "Mobile number is of 10 digit only. Please enter valid mobile number.");
                    response.sendRedirect("normaluser.jsp");
                } else if (amount <= 0) {
                    session.setAttribute("message", "Please Enter a valid amount greater than 0");
                    response.sendRedirect("normaluser.jsp");
                } else if (customer.getAmount() < amount) {
                    session.setAttribute("message", "not enough balance in the account.");
                    response.sendRedirect("normaluser.jsp");
                } else {

                    boolean b = TransactionDao.sendMobile(mobile, amount);
                    receiver = CustomerDao.getCustomerByMobile(mobile);
                    if (b == false) {
                        session.setAttribute("message", "User not found in the db");
                        response.sendRedirect("normaluser.jsp");

                    } else {
                        CustomerDao.updatebalance(customer, amount);
                        session.setAttribute("message", "successfully sent");
                        response.sendRedirect("normaluser.jsp");

                    }
                }

            } else if (id == 3) {

                String email = request.getParameter("email");
                amount = Integer.parseInt(request.getParameter("amount"));
                if (amount <= 0) {
                    session.setAttribute("message", "Please Enter a valid amount greater than 0");
                    response.sendRedirect("normaluser.jsp");
                } else if (customer.getAmount() < amount) {
                    session.setAttribute("message", "not enough balance in the account.");
                    response.sendRedirect("normaluser.jsp");
                } else {

                    boolean b = TransactionDao.sendEmail(email, amount);

                    receiver = CustomerDao.getCustomerByEmail(email);
                    
                    if (b == false) {
                        session.setAttribute("message", "User not found in the db");
                        response.sendRedirect("normaluser.jsp");

                    } else {
                        CustomerDao.updatebalance(customer, amount);
                        session.setAttribute("message", "successfully sent");
                        response.sendRedirect("normaluser.jsp");

                    }

                }

            } else if (id == 4) {

                String pan = request.getParameter("pan");
                amount = Integer.parseInt(request.getParameter("amount"));
                if (amount <= 0) {
                    session.setAttribute("message", "Please Enter a valid amount greater than 0");
                    response.sendRedirect("normaluser.jsp");
                } else if (customer.getAmount() < amount) {
                    session.setAttribute("message", "not enough balance in the account.");
                    response.sendRedirect("normaluser.jsp");
                } else {

                    boolean b = TransactionDao.sendPan(pan, amount);

                    receiver = CustomerDao.getCustomerByPan(pan);
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
            
            if(receiver != null){
                
                Session s = FactoryProvider.getFactory().openSession();
                org.hibernate.Transaction t = s.beginTransaction();
                
                Transaction transaction = new Transaction();
                transaction.setAmount(amount);
                transaction.setCustomer(customer);
                transaction.setDate(new Date());
                transaction.setReceiverID(receiver.getUserId());
                
                s.save(transaction);
                
                
                t.commit();
                s.close();
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
