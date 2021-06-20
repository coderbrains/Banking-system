<%-- 
    Document   : seeusertransaction
    Created on : Jun 20, 2021, 10:48:20 PM
    Author     : Awanish kumar singh
--%>

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
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
    </body>
</html>
