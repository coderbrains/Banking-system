<%-- 
    Document   : seeusertransaction
    Created on : Jun 20, 2021, 10:48:20 PM
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
        session.setAttribute("message", "This page is made only for the users. plz login first to view this page.");
        response.sendRedirect("PageNotfound.jsp");
    } else if (customer.getUserType().equals("admin")) {
        session.setAttribute("message", "This page is made only for the users. plz login as admin.");
        response.sendRedirect("PageNotfound.jsp");

    }

%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>See all transactions</title>
        <%@include file="common_components/commonjs_css.jsp" %>
    </head>
    <body>

        <%@include file="common_components/common_nav_bar.jsp" %>
        <%@include file="message.jsp" %>

        <div class="container card  mt-3" style="padding: 10px;background: #e2e2e2;
             cursor: pointer;
             border-radius: 10%;
             transform: scale(1.03);
             box-shadow: 0 2px 5px 0 rgba(0, 0, 0, 0.16), 0 2px 10px 0 rgba(0, 0, 0, 0.12);">

            <div class="text-center">
                <h1>My Transactions</h1>
            </div>


            <%                List<Transaction> list = TransactionDao.getAllTransactionBycustomer(customer);


            %>

            <table class="table">
                <thead>
                    <tr>
                        <th scope="col">Transaction Id</th>
                        <th scope="col">Amount</th>
                        <th scope="col">Date</th>
                        <th scope="col">Receiver Id</th>
                        <th scope="col">Receiver Name</th>

                    </tr>
                </thead>
                <tbody>

                    <%                    for (Transaction t : list) {

                    %>
                    
                    <tr>
                        
                        <td><%= t.getId() %></td>
                        <td><%=  t.getAmount()  %></td>
                        <td><%=  t.getDate() %></td>
                        <td><%= t.getReceiverID() %></td>
                        <td><%=   CustomerDao.getCustomerbyID(t.getReceiverID()).getName() %></td>
                        
                    </tr>
                    
                    <%
                        }
                    %>

                </tbody>
            </table>

        </div>


    </body>
</html>
