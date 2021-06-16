<%-- 
    Document   : index
    Created on : Jun 16, 2021, 7:08:29 AM
    Author     : Awanish kumar singh
--%>

<%@page import="org.hibernate.Transaction"%>
<%@page import="com.bankingsystem.helper.FactoryProvider"%>
<%@page import="org.hibernate.Session"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <%@include  file="common_components/commonjs_css.jsp" %>
    </head>
    <body>
        <%@include  file="common_components/common_nav_bar.jsp" %>
        <h1>Hello World!</h1>
        
            
            <%  out.println(FactoryProvider.getFactory()); %>
        <%  out.println(FactoryProvider.getFactory()); %>
        <%  out.println(FactoryProvider.getFactory()); %>
        <%  out.println(FactoryProvider.getFactory()); %>
        
    </body>
</html>
