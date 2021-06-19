<%-- 
    Document   : SeeAllusers
    Created on : Jun 19, 2021, 1:19:32 PM
    Author     : Awanish kumar singh
--%>

<%
    Customer customer = (Customer) session.getAttribute("currentuser");
    if(customer ==  null){
        session.setAttribute("message", "You are not allowed to see this page..");
        response.sendRedirect("PageNotfound.jsp");
    }else if(customer.getUserType().equals("normal")){
        session.setAttribute("message", "You are not an admin and so not allowed to see this..");
        response.sendRedirect("PageNotfound.jsp");
    }

%>

<%@page import="java.util.List"%>
<%@page import="com.bankingsystem.dao.CustomerDao"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>See All Users | Kotax bank</title>
        <%@include file="common_components/commonjs_css.jsp" %>
    </head>
    <body>
        <%@include file="common_components/common_nav_bar.jsp" %>
        <%         List<Customer> list = CustomerDao.getAllCustomers();
            if (list == null) {
                out.println("no customers found right now..");
                return;
            }
        %>

        <div class="container-fluid mt-4">

            <table class="table">
                <thead>
                    <tr>
                        <th scope="col">Id</th>
                        <th scope="col">Type</th>
                        <th scope="col">Name</th>
                        <th scope="col">Adhar</th>
                        <th scope="col">city</th>
                        <th scope="col">Email</th>
                        <th scope="col">Password</th>
                        <th scope="col">Amount</th>
                        <th scope="col">Pan</th>
                        <th scope="col">State</th>
                        <th scope="col">Pin</th>
                        <th scope="col">Avtar</th>
                    </tr>
                </thead>
                <tbody>

                    <%
                        for (Customer c : list) {

                    %>

                    <tr>

                        <td><%= c.getUserId()%></td>
                        <td><%=   c.getUserType()%></td>
                        <td><%= c.getName()%></td>
                        <td><%= c.getAadhar_number()%></td>
                        <td><%= c.getCity_name()%></td>
                        <td><%= c.getEmail()%></td>
                        <td><%= c.getPassword()%></td>
                        <td><%=  c.getAmount()  %></td>
                        <td><%= c.getPan_number()%></td>
                        <td><%= c.getState_name()%></td>
                        <td><%= c.getPincode()%></td>
                        <td><img src="Customer_pics/<%=  c.getPic_name()%> " style="max-height: 30px;max-width: 30px;" /></td>

                    </tr>

                    <%
                        }
                    %>

                </tbody>
            </table>    

        </div>



    </body>
</html>
