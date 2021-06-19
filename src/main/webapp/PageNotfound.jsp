<%-- 
    Document   : PageNotfound
    Created on : Jun 17, 2021, 5:40:08 PM
    Author     : Awanish kumar singh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Error Page</title>
        <%@include file="common_components/commonjs_css.jsp" %>
    </head>
    <body>
        <%@include file="message.jsp" %>
        <div class="container-fluid text-center mt-5">
            <h1>Page Not Found</h1>   
            <img src="img/404error.jpg"  style=" max-height: 300px; max-width: 300px; border-radius: 50%;"/>
            
        </div>
        
        <div class="container-fluid text-center">
            <a href="index.jsp" class="btn btn-primary">Go to Home</a>
        </div>
    </body>
</html>
