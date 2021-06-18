package com.bankingsystem.servlets;

import com.bankingsystem.dao.CustomerDao;
import com.bankingsystem.entities.Customer;
import com.bankingsystem.helper.SaveFile;
import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;

/**
 *
 * @author Awanish kumar singh
 */
@MultipartConfig
public class AccountCreate extends HttpServlet {

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
                if (pic.equals("")) {
                    pic = "default.jpg";
                }
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
                customer.setAmount(0);

                boolean saveCustomer = CustomerDao.saveCustomer(customer);
                HttpSession https = request.getSession();
                if (saveCustomer) {
                    String path = request.getRealPath("/") + "Customer_pics" + File.separator + part.getSubmittedFileName();
                    SaveFile.saveImage(part.getInputStream(), path);
                    https.setAttribute("message", "Your account has been opened successfully.Redirect to the Login page to enable account");
                    response.sendRedirect("SignUp.jsp");

                } else {
                    https.setAttribute("message", "Sorry ! Duplicate entry for the Adhar,mobile,email and Pancard is not allowed.");
                    response.sendRedirect("SignUp.jsp");
                }
            } catch (Exception e) {
                e.printStackTrace();
                HttpSession https = request.getSession();
                https.setAttribute("message", "Sorry ! Some error occured while opening account.Duplicate entries of the adhar,pan,mobile,email are not allowed.");
                response.sendRedirect("SignUp.jsp");
                
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
