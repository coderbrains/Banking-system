<%-- 
    Document   : SeeAllTransactions
    Created on : Jun 19, 2021, 2:47:34 PM
    Author     : Awanish kumar singh
--%>

<%@page import="com.bankingsystem.dao.CustomerDao"%>
<%@page import="java.util.List"%>
<%@page import="com.bankingsystem.dao.TransactionDao"%>
<%@page import="com.bankingsystem.entities.Transaction"%>
<%@page import="com.bankingsystem.entities.Customer"%>
<%
    Customer customer = (Customer) session.getAttribute("currentuser");
    if (customer == null) {
        session.setAttribute("message", "You are not allowed to see this page..");
        response.sendRedirect("PageNotfound.jsp");
    } else if (customer.getUserType().equals("normal")) {
        session.setAttribute("message", "You are not an admin and so not allowed to see this..");
        response.sendRedirect("PageNotfound.jsp");
    }

%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>All transactions | Kotax </title>
        <%@include  file="common_components/commonjs_css.jsp" %>
    </head>
    <body>
        <%@include file="common_components/common_nav_bar.jsp" %>



        <%                    List<Transaction> list = TransactionDao.getAllTransaction();
            if (list.size() != 0) {

                for (Transaction t : list) {
        %>
        <table class="table">
            <thead>
                <tr>
                    <th scope="col">Transaction Id</th>
                    <th scope="col">Amount</th>
                    <th scope="col">Date</th>
                    <th scope="col">Receiver Id</th>
                    <th scope="col">Receiver Name</th>
                    <th scope="col">Sender Id</th>
                    <th scope="col">Sender name</th>

                </tr>
            </thead>
            <tbody>

                <tr>
                    <td><%= t.getId()%></td>
                    <td><%= t.getAmount()%></td>
                    <td><%= t.getDate()%></td>
                    <td><%= t.getReceiverID()%></td>
                    <td><%=   CustomerDao.getCustomerbyID(t.getReceiverID()).getName() %></td>
                    <td><%=   t.getCustomer().getUserId() %></td>
                    <td><%= CustomerDao.getCustomerbyID(t.getCustomer().getUserId()).getName()  %></td>
                </tr>
            </tbody>
        </table>

        <%
                }
            } else {

                out.println("<h1>No Transactions found.</h1>");

            }
        %>



    </body>
</html>
