<%-- 
    Document   : admin
    Created on : 7 Sep, 2019, 3:18:42 PM
    Author     : hedgehog
--%>


<%@page language="java" contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html> 
    <head>
        <title>Admin Page</title>
    </head>
    <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
    <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
    <script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
    <!------ Include the above in your HEAD tag ---------->
    <body>
    <center>
        <br><br>
        <form class="form-horizontal" method="POST" action="adminlogin.jsp">
            <fieldset>

                <!-- Form Name -->
                <legend>Login</legend>

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
                
                <!-- Admin Check -->
                <div class="form-group">
                  <label class="col-md-4 control-label" for="lname">user type</label>  
                  <div class="col-md-4"> 
                  <label class="col-md-4 control-label" for="lname">Admin</label>  

                  <input id="lname" name="admin" value="admin" type="hidden" placeholder="Admin" class="form-control input-md">
                    
                  </div>
                </div>

                <!-- Button (Double) -->
                <div class="form-group">
                    <label class="col-md-4 control-label" for="save"></label>
                    <div class="col-md-8">
                        <button id="save" name="save" class="btn btn-success">Login</button>
                        
                    </div>
                </div>
        <font color="red"><c:if test="${not empty param.errMsg}">
            <c:out value="${param.errMsg}" />
            </c:if></font>
            </fieldset>
        </form>
        
    </center>
</body>
<jsp:include page="footer.jsp" />
</html>
