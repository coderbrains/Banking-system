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

        <div class="container-fluid">

            <h3 class="text-center mb-3"> Consumer Information</h3>

            <div class="row">

                <div class="col-md-8">

                    <div class=" text-center">

                        <div class="card-body">

                            <table class="table">
                                <thead>
                                    <tr>
                                        <th scope="col" align="center" colspan="2">Consumer Details</th>

                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <th scope="row">Name</th>
                                        <td><%=  customer.getName()%></td>
                                    </tr>

                                    <tr>
                                        <th scope="row">Email</th>
                                        <td><%=  customer.getEmail()%></td>
                                    </tr>

                                    <tr>
                                        <th scope="row">Password  </th>
                                        <td><%=  customer.getPassword()%></td>
                                    </tr>

                                    <tr>
                                        <th scope="row">Account Balance   </th>
                                        <td><%=  customer.getAmount()%></td>
                                    </tr>


                                </tbody>
                            </table>                                

                        </div>

                    </div>

                </div>



                <div class="col-md-4">


                    <div class=" text-center">

                        <div class="card-body">

                            <img src="Customer_pics/<%=  customer.getPic_name()%>" class="img-fluid" style="max-height: 200px; max-width: 200px;"/>

                        </div>


                    </div>

                </div>

            </div>

            <b><hr></b>

            <section class="text-center"><b>Send money using</b></section>

            <div class="container mt-2">
            <div class="row text-center">

                <div class="col-md-4">
                    <div class="card">
                        <div class="card-body">
                            <h1>Adhar</h1>
                        </div>
                    </div>
                </div>
                
                <div class="col-md-4">
                    <div class="card">
                        
                    </div>
                    
                </div>
                
                <div class="col-md-4">
                    <div class="card">
                        
                    </div>
                </div>
                
            </div>
        </div>


        </div>

    </body>
</html>
