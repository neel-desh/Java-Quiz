<%-- 
    Document   : userprofile
    Created on : 7 Sep, 2019, 7:29:59 PM
    Author     : hedgehog
--%>


<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>

<%@page language="java" contentType="text/html" pageEncoding="UTF-8"%>
<%

    if (session.getAttribute("username") == null) {
        response.sendRedirect("login.jsp");
    }

%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>User High Score</title>
    </head>
    <body>
        <jsp:include page="header.jsp" />
                <sql:setDataSource driver="com.mysql.jdbc.Driver"
                           url="jdbc:mysql://localhost:3306/javasql"
                           user="root"
                           password=""></sql:setDataSource>
        <sql:query var="user">
            select * from loginreg where unique_id='${useruniqueid}'  
        </sql:query>
        <br>
    <center> <h1>Ahoyy! amigo ${username}</h1></center>
        <br>
        <div style="padding: 20px;">
        <table class="table table-hover table-bordered table-info">
  <thead class="thead-dark">
    <tr>
      <th scope="col">#</th>
      <th scope="col">Username</th>
      <th scope="col">Email</th>
      <th scope="col">password</th>
      <th scope="col">Creation time</th>
      <th scope="col">Update</th>
      <th scope="col">Delete</th>

    </tr>
  </thead>
  <tbody>
  <form action="updateusercontroller.jsp" method="POST">
      <c:forEach  var="user" items="${user.rows}">
     <tr>
     <input type="hidden" name="uniqueid" value="${user.unique_id}">
      <th scope="row">${user.unique_id}</th>
      <td><input type="text" name="username" value="${user.username}"></td>
      <td><input type="email" name="email" value="${user.email}"></td>
      <td><input type="password" name="password" value="${user.password}"></td>
      <td>${user.creationtime}</td>
      <td><input type="submit"  value="update" class="delete"></td>
      <td><a href="deleteusercontroller.jsp?id=${user.unique_id}"><input type="button" class="delete" value="Delete"></a></td>
</tr>  
          
      </c:forEach>

  </form>
  </tbody>
</table>
            <center>${updated}</center>
        </div>
    </body>
    <jsp:include page="footer.jsp" />
</html>
