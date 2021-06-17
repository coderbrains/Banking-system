<%-- 
    Document   : normaluser
    Created on : Jun 17, 2021, 1:41:42 PM
    Author     : Awanish kumar singh
--%>

<%@page import="com.bankingsystem.entities.Customer"%>
<%
    Customer customer = (Customer)session.getAttribute("currentuser");
    if(customer == null)
    {
        session.setAttribute("message", "You are not logged in ! Login first.");
        response.sendRedirect("Login.jsp");
        return;
    }else if(customer.getUserType().equals("admin")){
        session.setAttribute("message", "You are not Customer ! Login first");
        session.removeAttribute("currentuser");
        response.sendRedirect("Login.jsp");
        return;
    }
    
    %>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Hello, <%=   customer.getName()  %> | Customer page | Kotax</title>
        <%@include file="common_components/commonjs_css.jsp" %>
    </head>
    <body>
        <%@include file="common_components/common_nav_bar.jsp" %>
        <h1>Normal user</h1>
        
        
    </body>
</html>
