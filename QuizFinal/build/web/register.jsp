<%-- 
    Document   : register
    Created on : 3 Sep, 2019, 7:42:07 PM
    Author     : hedgehog
--%>

<%@page language="java" contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html> <head>
        <title>Registration Page</title>
    </head>
    <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
    <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
    <script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
    <!------ Include the above in your HEAD tag ---------->
    <body>
    <center>
        <br><br>
        <form class="form-horizontal" method="POST" action="register">
            <fieldset>

                <!-- Form Name -->
                <legend>Register</legend>

                <!-- Text input-->
                <div class="form-group">
                    <label class="col-md-4 control-label" for="fname">Full Name</label>  
                    <div class="col-md-4">
                        <input id="fname" name="fname" type="text" placeholder="Neel Deshmukh" class="form-control input-md" required="">

                    </div>
                </div>

                <!-- Text input-->
                <!--<div class="form-group">
                  <label class="col-md-4 control-label" for="lname">Last Name</label>  
                  <div class="col-md-4">
                  <input id="lname" name="lname" type="text" placeholder="Doe" class="form-control input-md" required="">
                    
                  </div>
                </div>-->

                <!-- Text input-->
                <div class="form-group">
                    <label class="col-md-4 control-label" for="email">Email</label>  
                    <div class="col-md-4">
                        <input id="email" name="email" type="text" placeholder="neel@deshmukh.com" class="form-control input-md" required="">

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
                        <button id="save" name="save" class="btn btn-success">Register</button>
                        &nbsp;&nbsp;&nbsp;
                        <a href="login.jsp">Have an account? Login Instead</a>
                    </div>
                </div>

            </fieldset>
        </form>
    </center>
</body>
<jsp:include page="footer.jsp" />
</html>
