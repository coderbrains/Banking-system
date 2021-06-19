<%-- 
    Document   : normaluser
    Created on : Jun 17, 2021, 1:41:42 PM
    Author     : Awanish kumar singh
--%>

<%@page import="com.bankingsystem.entities.Customer"%>
<%
    Customer customer = (Customer) session.getAttribute("currentuser");
    if (customer == null) {
        session.setAttribute("message", "You are not logged in ! Login first.");
        response.sendRedirect("Login.jsp");
        return;
    } else if (customer.getUserType().equals("admin")) {
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
        <title>Hello, <%=   customer.getName()%> | Customer page | Kotax</title>
        <%@include file="common_components/commonjs_css.jsp" %>
    </head>
    <body>
        <%@include file="common_components/common_nav_bar.jsp" %>

        <div class="container">

            <div class="row mt-5">

                <div class="col-md-4">

                    <div class="card text-center">

                        <div class="card-body">

                            <h1>Send by Adhar_no</h1>

                        </div>

                    </div>

                </div>

                <div class="col-md-4">

                    <div class="card text-center">

                        <div class="card-body">

                            <h1>Send By Consumer Id</h1>

                        </div>


                    </div>

                </div>

                <div class="col-md-4">


                    <div class="card text-center">

                        <div class="card-body">

                            <h1>Send By PAN</h1>

                        </div>


                    </div>

                </div>

            </div>


        </div>


    </body>
</html>
