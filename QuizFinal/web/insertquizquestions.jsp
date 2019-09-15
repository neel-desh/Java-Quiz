<%-- 
    Document   : insertquizquestions
    Created on : 10 Sep, 2019, 10:10:27 AM
    Author     : hedgehog
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>
<%@page language="java" contentType="text/html" pageEncoding="UTF-8"%>
<%
    
if(session.getAttribute("UserType")==null){
response.sendRedirect("admin.jsp");
}

%>

<!DOCTYPE html>
<html> <head>
        <title>Insert Page</title>
    </head>
    <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
    <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
    <script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
    <!------ Include the above in your HEAD tag ---------->
    <body>
            <jsp:include page="adminheader.jsp" />
                <sql:setDataSource driver="com.mysql.jdbc.Driver"
                           url="jdbc:mysql://localhost:3306/javasql"
                           user="root"
                           password=""></sql:setDataSource>
        <sql:query var="rowcount">
            select * from ${adminquiztype};   
        </sql:query>
        <br><br>
       
        <h2 align="center">Insert Into ${adminquiztype} Quiz</h2>
    <center>
        <form class="form-horizontal" method="POST" action="insertandredirect.jsp">
            <fieldset>

                <!-- Form Name -->

                <!-- Text input-->
                                <div class="form-group">
                    <label class="col-md-4 control-label" for="fname">Question number</label>  
                    <div class="col-md-4">
                        <input id="fname" name="questionnumberdisplay" type="text" placeholder="${rowcount.rowCount+1}" class="form-control input-md" value="${rowcount.rowCount+1}" disabled>
<input name="questionnumber" type="hidden" value="${rowcount.rowCount+1}">
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-md-4 control-label" for="fname">Question</label>  
                    <div class="col-md-4">
                        <input id="fname" name="question" type="text" placeholder="Question here" class="form-control input-md" required="">

                    </div>
                </div>
                                <div class="form-group">
                    <label class="col-md-4 control-label" for="fname">1st Option</label>  
                    <div class="col-md-4">
                        <input id="fname" name="opt1" type="text" placeholder="1st Option" class="form-control input-md" required="">

                    </div>
                </div>
                                <div class="form-group">
                    <label class="col-md-4 control-label" for="fname">2nd Option</label>  
                    <div class="col-md-4">
                        <input id="fname" name="opt2" type="text" placeholder="2nd Option" class="form-control input-md" required="">

                    </div>
                </div>
                                <div class="form-group">
                    <label class="col-md-4 control-label" for="fname">3rd Option</label>  
                    <div class="col-md-4">
                        <input id="fname" name="opt3" type="text" placeholder="3rd Option" class="form-control input-md" required="">

                    </div>
                </div>
                                <div class="form-group">
                    <label class="col-md-4 control-label" for="fname">4th Option</label>  
                    <div class="col-md-4">
                        <input id="fname" name="opt4" type="text" placeholder="4th Option" class="form-control input-md" required="">

                    </div>
                </div>
                                <div class="form-group">
                    <label class="col-md-4 control-label" for="fname">Correct Answer</label>  
                    <div class="col-md-4">
                        <input id="fname" name="ropt" type="text" placeholder="Correct Option" class="form-control input-md" required="">

                    </div>
                </div>



                <!-- Button (Double) -->
                <div class="form-group">
                    <div class="col-md-8">
                        <button id="save" name="save" class="btn btn-success">Insert</button>
                    </div>
                </div>

            </fieldset>
                    </center>
        </form>
 
        
        
        <br><br><br><br>
<jsp:include page="footer.jsp" />
</html>
