<%@page import="com.bankingsystem.entities.Customer"%>
<nav class="navbar navbar-expand-lg navbar-dark primary-background">
    <div class="container">
        <a class="navbar-brand" href="index.jsp"><i class="fa fa-bank mr-2"></i>Kotax</a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>

        <div class="collapse navbar-collapse" id="navbarSupportedContent">

            <ul class="navbar-nav ml-auto">


                <%
                    Customer custom = (Customer) session.getAttribute("currentuser");
                    if (custom == null) {

                %>


                <li class="nav-item active">
                    <a class="nav-link" href="index.jsp"><i class='fa fa-home mr-2'></i>Home <span class="sr-only">(current)</span></a>
                </li>
                <li class="nav-item active">
                    <a class="nav-link" href="Login.jsp"><i class="fa fa-user-circle-o fa-spin mr-2"></i>Login</a>
                </li>

                <li class="nav-item active">
                    <a class="nav-link" href="SignUp.jsp"><i class="fa fa-user-plus mr-2"></i>Sign up</a>
                </li>

                <%                } else {

                %>

                <%                    if (custom.getUserType().equals("normal")) {

                %>
                <li class="nav-item active">
                    <a class="nav-link" href="normaluser.jsp"><i class='fa fa-home mr-2'></i>Home <span class="sr-only">(current)</span></a>
                </li>   

                <%                    }else{


                %>
                <li class="nav-item active">
                    <a class="nav-link" href="adminuser.jsp"><i class='fa fa-home mr-2'></i>Home <span class="sr-only">(current)</span></a>
                </li>
                
                <% 
                    }
                %>
                

                <li class="nav-item active">
                    <a class="nav-link" href="#!"><img style="max-height: 25px;max-width: 25px; border-radius: 50%;" class="mr-2 img-fluid" src="Customer_pics/<%= custom.getPic_name()%>"/><%=  custom.getName()%></a>
                </li>


                <li class="nav-item active">
                    <a class="nav-link" href="LogoutServlet"><i class="fa fa-user-plus mr-2"></i>Logout</a>
                </li>

                <%                    }
                %>
            </ul>
        </div>
    </div>
</nav>