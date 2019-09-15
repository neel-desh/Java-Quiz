<%-- 
    Document   : seeuserfeedback
    Created on : 15 Sep, 2019, 12:53:03 PM
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
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>See UserFeedback</title>
    </head>
    <body>
        <jsp:include page="adminheader.jsp" />
        <sql:setDataSource driver="com.mysql.jdbc.Driver"
                           url="jdbc:mysql://localhost:3306/javasql"
                           user="root"
                           password=""></sql:setDataSource>
        <sql:query var="user">
            select * from feedback  
        </sql:query>
        <br>
    <center> <h1>User total high score from all quiz!</h1></center>
        <br>
        <div style="padding: 20px;">
        <table class="table table-hover table-bordered table-info">
  <thead class="thead-dark">
    <tr>
      <th scope="col">#</th>
      <th scope="col">Username</th>
      <th scope="col">Email</th>
      <th scope="col">Message</th>
      <th scope="col">Time</th>

    </tr>
  </thead>
  <tbody>
      <c:forEach  var="user" items="${user.rows}">
     <tr>
      <th scope="row">${user.fbuniqueid}</th>
      <td>${user.username}</td>
      <td>${user.email}</td>
      <td>${user.message}</td>
      <td>${user.feedbacktime}</td>
    </tr>  
          
      </c:forEach>


  </tbody>
</table>
        </div>
    </body>
    <jsp:include page="footer.jsp" />
</html>
