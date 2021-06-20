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
    <body style="background: #F9FBE7">
        <%@include file="common_components/common_nav_bar.jsp" %>
        <%@include file="message.jsp" %>
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

            <div class="container mt-3">
                <div class="row text-center adminn">

                    <div class="col-md-3">
                        <div class="card" data-toggle="modal" data-target="#Adhar">
                            <div class="card-body">
                                <img src="img/adhar.png" style="max-height: 70px; max-width: 70px;"/>
                                <h1>Adhar</h1>
                            </div>
                        </div>
                    </div>

                    <div class="col-md-3">
                        <div class="card"  data-toggle="modal" data-target="#Mobile">
                            <div class="card-body">
                                <img src="img/mobile.jpg" style="max-height: 50px; max-width: 50px;"/>
                                <h1>Mobile</h1>
                            </div>
                        </div>

                    </div>

                    <div class="col-md-3">
                        <div class="card" data-toggle="modal" data-target="#Email">
                            <div class="card-body">
                                <img src="img/email.jpg" style="max-height: 50px; max-width: 50px;"/>

                                <h1>Email</h1>
                            </div>
                        </div>
                    </div>

                    <div class="col-md-3">
                        <div class="card" data-toggle="modal" data-target="#Pan">
                            <div class="card-body">
                                <img src="img/pan.jpg" style="max-height: 50px; max-width: 50px;"/>
                                <h1>Pan No</h1>
                            </div>
                        </div>
                    </div>


                </div>
            </div>


        </div>



        <!--adhar number send money starts here-->


        <!-- Modal -->
        <div class="modal fade" id="Adhar" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
            <div class="modal-dialog" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title" id="exampleModalLabel">Send money using Adhar</h5>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                    <div class="modal-body">
                        <form action="SendMoney?id=1" method="post">
                            <div class="form-group">
                                <label for="exampleInputEmail1">Enter Adhar number</label>
                                <input type="number" name="adhar" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" required="true" placeholder="Enter Adhar number">
                            </div>
                            <div class="form-group">
                                <label for="exampleInputEmail1">Enter Amount</label>
                                <input type="number" name="amount" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" required="true" placeholder="Enter Amount ">
                            </div>
                            <div class="container text-center">
                                <button type="submit" class="btn btn-primary">Send</button>
                            </div>
                        </form>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>

                    </div>
                </div>
            </div>
        </div>

        <!--adhar number send money ends here-->


        <!--send money using mobile starts here-->

        <div class="modal fade" id="Mobile" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
            <div class="modal-dialog" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title" id="exampleModalLabel">Send money using mobile number</h5>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                    <div class="modal-body">
                        <form action="SendMoney?id=2" method="post">
                            <div class="form-group">
                                <label for="exampleInputEmail1">Enter Mobile number</label>
                                <input type="number" name="mobile" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" required="true" placeholder="Enter Mobile number">
                            </div>
                            <div class="form-group">
                                <label for="exampleInputEmail1">Enter Amount</label>
                                <input type="number" name="amount" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" required="true" placeholder="Enter Amount ">
                            </div>
                            <div class="container text-center">
                                <button type="submit" class="btn btn-primary">Send</button>
                            </div>
                        </form>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>

                    </div>
                </div>
            </div>
        </div>


        <!--send money using mobile ends here-->


        <!--send money using email starts here-->

        <div class="modal fade" id="Email" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
            <div class="modal-dialog" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title" id="exampleModalLabel">Send money using Email Id</h5>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                    <div class="modal-body">
                        <form action="SendMoney?id=3" method="post">
                            <div class="form-group">
                                <label for="exampleInputEmail1">Enter Email</label>
                                <input type="email" name="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" required="true" placeholder="Enter Email Id">
                            </div>
                            <div class="form-group">
                                <label for="exampleInputEmail1">Enter Amount</label>
                                <input type="number" name="amount" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" required="true" placeholder="Enter Amount ">
                            </div>
                            <div class="container text-center">
                                <button type="submit" class="btn btn-primary">Send</button>
                            </div>
                        </form>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                    </div>
                </div>
            </div>
        </div>

        <!--send money using email ends here-->


        <!--send money using Pan starts here-->

        <div class="modal fade" id="Pan" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
            <div class="modal-dialog" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title" id="exampleModalLabel">Send money using Pan number</h5>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                    <div class="modal-body">
                        ...
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                        <button type="button" class="btn btn-primary">Save changes</button>
                    </div>
                </div>
            </div>
        </div>

        <!--send money using pan ends here-->


    </body>
</html>
