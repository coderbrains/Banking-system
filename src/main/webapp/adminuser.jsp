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
    <body style="background: #E8EAF6;">
        <%@include file="common_components/common_nav_bar.jsp" %>
        <%@include file="message.jsp" %>

        <div class="container admin">

            <!--First row coded here-->


            <div class="row mt-4 mb-3">

                <div class="col-md-4">

                    <div class="card">
                        <div class="card-body text-center">
                            <img src="img/user.png" style="border-radius: 50%; max-height: 150px;max-width: 150px;"/>

                            <h1><a href="SeeAllusers.jsp" target="_blank" >Users</h1></a>
                        </div>
                    </div>

                </div>

                <div class="col-md-4">
                    <div class="card">
                        <div class="card-body text-center">
                            <img src="img/tr.png" style="border-radius: 50%; max-height: 150px;max-width: 150px;"/>
                            <a href="SeeAllTransactions.jsp" target="_blank"><h1>Transactions</h1></a> 
                        </div>
                    </div>


                </div>



                <div class="col-md-4">

                    <div class="card">
                        <div class="card-body text-center">

                            <img src="img/depo.png" style="border-radius: 50%; max-height: 150px;max-width: 150px;"/>
                            <a href="deposit.jsp" target="_blank"><h1>Deposit</h1></a>
                        </div>
                    </div>

                </div>


            </div>


            <!--First row coding ends here-->

            <!--second row coding starts here-->

            <div class="row mb-3">

                <div class="col-md-4">

                    <div class="card">
                        <div class="card-body text-center">

                            <img src="img/create.png" style="border-radius: 50%; max-height: 150px;max-width: 150px;"/>
                            <a href="SignUp.jsp" target="_blank"><h1>Create Account</h1></a>
                        </div>
                    </div>

                </div>


                <div class="col-md-4">
                    <div class="card"  data-toggle="modal" data-target="#exampleModal">
                        <div class="card-body text-center">
                            <img src="img/block.jpg" style="border-radius: 50%; max-height: 140px;max-width: 140px;"/>

                            <h1>Block Account</h1>
                        </div>
                    </div>


                </div>



                <div class="col-md-4">

                    <div class="card">
                        <div class="card-body text-center">

                            <img src="img/with.png" style="border-radius: 50%; max-height: 140px;max-width: 140px;"/>
                            <a href="Witdraw.jsp" target="_blank"><h1>Withdraw</h1></a>
                        </div>
                    </div>

                </div>



            </div>

            <!--second row coding ends here-->

        </div>


        <!--block account modal starts here.-->

        <!-- Button trigger modal -->



        <!-- Modal -->
        <div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
            <div class="modal-dialog" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title" id="exampleModalLabel">Blocking Account</h5>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                    <div class="modal-body">
                        <form action="BlockServlet" method="post">
                            <div class="form-group">
                                <label for="exampleInputEmail1">Enter the customer Id you want to Block</label>
                                <input type="number" class="form-control" name="userid" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Enter Id of the customer">

                            </div>


                            <div class="container text-center">

                                <p>This action cannot be undone.</p>
                            </div>
                    </div>
                    <div class="modal-footer">

                        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                        <button type="submit" class="btn btn-primary">Block</button>
                    </div>
                    </form>
                </div>
            </div>
        </div>

        <!--block account modal ends here-->

    </body>
</html>
