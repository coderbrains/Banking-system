<%-- 
    Document   : adminuser
    Created on : Jun 17, 2021, 1:40:53 PM
    Author     : Awanish kumar singh
--%>

<%@page import="com.bankingsystem.entities.Customer"%>
<%
    Customer customer = (Customer)session.getAttribute("currentuser");
    if(customer == null)
    {
        session.setAttribute("message", "You are not logged in ! Login first.");
        response.sendRedirect("Login.jsp");
    }
    
    %>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title></title>
    </head>
    <body>
        <h1>Admin User</h1>
    </body>
</html>
