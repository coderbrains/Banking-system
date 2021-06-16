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

        <header class="header">

            <div class="container h-100">

                <div class="container h-100">

                    <div class="container h-100">
                        <div class="container h-100">

                            <div class="row h-100 align-items-center">

                                <div class="col-md-12 text-center">


                                    <h1 class="animate__backInDown animate__animated wow">Welcome to Kotax Bank</h1>
                                    <p class="animate__flipInY animate__animated wow">It is one amongst the fastest growing 
                                        banks and the most admired financial institutions in India. The Bank offers 
                                        transaction banking, operates lending verticals, manages IPOs and 
                                        provides working capital loans.</p>

                                    <button class="btn btn-primary animate__backInUp animate__animated wow">Start Service</button>


                                </div>



                            </div>

                        </div>

                    </div>
                </div>
            </div>
        </div>
    </header>

        
    </body>
</html>
