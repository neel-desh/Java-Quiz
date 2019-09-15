<%-- 
    Document   : login
    Created on : 3 Sep, 2019, 7:41:54 PM
    Author     : hedgehog
--%>

<%@page language="java" contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html> 
    <head>
        <title>Login Page</title>
    </head>
    <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
    <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
    <script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
    <!------ Include the above in your HEAD tag ---------->
    <body>
    <center>
        <br><br>
        <form class="form-horizontal" method="POST" action="login">
            <fieldset>

                <!-- Form Name -->
                <legend>Login</legend>

                <!-- Text input-->
<!--                <div class="form-group">
                    <label class="col-md-4 control-label" for="fname">Full Name</label>  
                    <div class="col-md-4">
                        <input id="fname" name="fname" type="text" placeholder="Neel Deshmukh" class="form-control input-md" required="">

                    </div>
                </div>-->

                <!-- Text input-->
                <!--<div class="form-group">
                  <label class="col-md-4 control-label" for="lname">Last Name</label>  
                  <div class="col-md-4">
                  <input id="lname" name="lname" type="text" placeholder="Doe" class="form-control input-md" required="">
                    
                  </div>
                </div>-->

                <!-- Text input-->
                <div class="form-group">
                    <label class="col-md-4 control-label" for="email">Username</label>  
                    <div class="col-md-4">
                        <input id="email" name="username" type="text" placeholder="Enter username" class="form-control input-md" required="">

                    </div>
                </div>

                <!-- Password input-->
                <div class="form-group">
                    <label class="col-md-4 control-label" for="password">Password</label>
                    <div class="col-md-4">
                        <input id="password" name="password" type="password" placeholder="" class="form-control input-md" required="">

                    </div>
                </div>

                <!-- Button (Double) -->
                <div class="form-group">
                    <label class="col-md-4 control-label" for="save"></label>
                    <div class="col-md-8">
                        <button id="save" name="save" class="btn btn-success">Login</button>
                        &nbsp;&nbsp;&nbsp;
                        <a href="register.jsp">Don't have an account? Register</a>
                    </div>
                </div>


            </fieldset>
        </form>
        <h4 style="color:red;">${LoginError}</h4>
    </center>
</body>
<jsp:include page="footer.jsp" />
</html>