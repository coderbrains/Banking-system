<%-- 
    Document   : Login
    Created on : Jun 16, 2021, 9:29:15 PM
    Author     : Awanish kumar singh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Customer Login page </title>
        <%@include file="common_components/commonjs_css.jsp" %>
    </head>
    <body style="background: #E8EAF6;">
        <%@include file="common_components/common_nav_bar.jsp" %>

        <div class="container">

            <div class="row">
                <div class="col-md-6 offset-md-3">
                    <div class="card  mt-2">

                        <div class="card-header text-center">
                            <h2 class="card-title"><i class="fa fa-user-plus"></i>Customer  Login</h2>
                        </div>

                        <div class="card-body">
                            <%@include file="message.jsp" %>
                            <form action="LoginServlet" method="post">
                                <div class="form-group">
                                    <label for="exampleInputEmail1">Email address</label>
                                    <input type="email" name="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Enter email">
                                    <small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small>
                                </div>
                                <div class="form-group">
                                    <label for="exampleInputPassword1">Password</label>
                                    <input name="password" type="password" class="form-control" id="exampleInputPassword1" placeholder="Password">
                                </div>

                                <div class="text-center">
                                    <button type="submit" class="btn btn-primary">Login</button>
                                </div>
                                
                                <div class="text-center mt-2">
                                    <p>Do not have account ?<a href="SignUp.jsp"> Create Account Here</a> </p>
                                </div>
                                
                            </form>

                        </div>
                    </div>

                </div>

            </div>
        </div>

    </body>
</html>
