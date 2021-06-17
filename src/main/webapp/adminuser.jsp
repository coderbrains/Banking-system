<%-- 
    Document   : adminuser
    Created on : Jun 17, 2021, 1:40:53 PM
    Author     : Awanish kumar singh
--%>

<%@page import="com.bankingsystem.entities.Customer"%>
<%
    Customer customer = (Customer) session.getAttribute("currentuser");
    if (customer == null) {
        session.setAttribute("message", "You are not logged in ! Login first.");
        response.sendRedirect("Login.jsp");
        return;
    } else if (customer.getUserType().equals("normal")) {
        session.setAttribute("message", "You are not admin.");
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
        <title>Hello, <%=  customer.getName()%> | Admin page | Kotax</title>
        <%@include file="common_components/commonjs_css.jsp" %>
    </head>
    <body>
        <%@include file="common_components/common_nav_bar.jsp" %>
        <%@include file="message.jsp" %>

        <div class="container admin">

            <!--First row coded here-->

            
            <div class="row mt-4 mb-3">

                <div class="col-md-6">

                    <div class="card">
                        <div class="card-body text-center">
                            <img src="img/user.png" style="border-radius: 50%; max-height: 150px;max-width: 150px;"/>
                            
                            <h1>Users</h1>
                        </div>
                    </div>

                </div>

                <div class="col-md-6">
                    <div class="card">
                        <div class="card-body text-center">
                            <img src="img/tr.png" style="border-radius: 50%; max-height: 150px;max-width: 150px;"/>
                            <h1>Transactions</h1>
                        </div>
                    </div>


                </div>


            </div>
            

            <!--First row coding ends here-->

            <!--second row coding starts here-->

            <div class="row mb-3">

                <div class="col-md-6">

                    <div class="card">
                        <div class="card-body text-center">
                            
                            <img src="img/create.png" style="border-radius: 50%; max-height: 150px;max-width: 150px;"/>
                            <h1>Create Account</h1>
                        </div>
                    </div>

                </div>

                <div class="col-md-6">
                    <div class="card">
                        <div class="card-body text-center">
                            <img src="img/block.jpg" style="border-radius: 50%; max-height: 140px;max-width: 140px;"/>
                            
                            <h1>Block Account</h1>
                        </div>
                    </div>


                </div>



            </div>

            <!--second row coding ends here-->

        </div>


    </body>
</html>
