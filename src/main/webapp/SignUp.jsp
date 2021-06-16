<%-- 
    Document   : SignUp
    Created on : Jun 16, 2021, 5:30:44 PM
    Author     : Awanish kumar singh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Sign Up | Kotax </title>
        <%@include file="common_components/commonjs_css.jsp" %>
    </head>
    <body style="background: #E8EAF6;">
        <%@include file="common_components/common_nav_bar.jsp" %>

        <form action="AccountCreate" method="post" enctype="multipart/form-data">
            <div class=' card mt-2 container'>

                <div class='text-center'>
                    <h1>Fill This form to create Account</h1>
                   
                </div>

                <div class="row mb-5">

                    <div class='col-md-6'>
                        <div class='card'>
                            <div class="card-body">

                                <div class="form-group">
                                    <label for="exampleInputEmail1">Name</label>
                                    <input type="text" name='name' class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Enter name">
                                </div>

                                <div class="form-group">
                                    <label for="exampleInputEmail1">Age</label>
                                    <input type="number" name='age' class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Enter your age">
                                </div>                 

                                <div class="form-group">
                                    <label for="exampleInputEmail1">Pan Number</label>
                                    <input type="text" name='pan' class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Enter pan">
                                </div>

                                <div class="form-group">
                                    <label for="exampleInputEmail1">Aadhar Number</label>
                                    <input type="text" name='adhar' class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Enter adhar number">
                                </div>

                                <div class="form-group">
                                    <label for="exampleInputEmail1">City</label>
                                    <input type="text" name='city' class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Enter City name">
                                </div>

                                <div class="form-group">
                                    <label for="exampleInputEmail1">Mobile Number</label>
                                    <input type="number" name='mobile' class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Enter Mobile number">
                                </div>

                            </div>
                        </div>
                    </div>

                    <div class='col-md-6'>
                        <div class='card'>
                            <div class="card-body">
                                
                                <div class="form-group">
                                    <label for="exampleInputEmail1">Email</label>
                                    <input type="email" name='email' class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Enter Email number">
                                </div>
                                
                                 <div class="form-group">
                                    <label for="exampleInputEmail1">Password</label>
                                    <input type="password" name='password' class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Enter Strong passwords">
                                </div>
                                
                                 <div class="form-group">
                                    <label for="exampleInputEmail1">Zip code</label>
                                    <input type="number" name='pin' class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Enter six digit postal code">
                                </div>
                                
                                 <div class="form-group">
                                    <label for="exampleInputEmail1">State Name</label>
                                    <input type="text" name='state' class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Enter Your state">
                                </div>
                                
                                 <div class="form-group">
                                    <label for="exampleInputEmail1">select your picture</label>
                                    <input type="file" name='image' class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Enter Mobile number">
                                </div>
                                
                                 <div class="form-group">
                                
                                     <button type="submit" class="btn btn-primary form-control">Create Account &nbsp;  &nbsp;<i class="fa fa-sign-out"></i></button>
                                     
                                 </div>
                                
                            </div>
                        </div>
                    </div>

                    </form>

                </div>
            </div>

    </body>
</html>
