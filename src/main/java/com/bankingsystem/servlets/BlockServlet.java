package com.bankingsystem.servlets;

import com.bankingsystem.dao.CustomerDao;
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
public class BlockServlet extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
           
            try{
                
            }catch(Exception e){
                session.setAttribute("message", "Sorry ! Some error occured. TRY AGAIN AFTER SOMETIME.");
                response.sendRedirect("adminuser.jsp");
                e.printStackTrace();
            }
            
            String id = request.getParameter("userid");
            int status =   CustomerDao.deleteUser(Integer.parseInt(id));
            HttpSession session = request.getSession();
            if(status > 0){
                
                session.setAttribute("message", "Successfully deleted ! This account is deleted successfully and cannot be retrieved.");
                response.sendRedirect("adminuser.jsp");
            }else{
                session.setAttribute("message", "This account is not found in the database. Wrong Id.");
                response.sendRedirect("adminuser.jsp");
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
