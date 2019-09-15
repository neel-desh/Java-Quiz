<%-- 
    Document   : delete
    Created on : 6 Sep, 2019, 7:37:29 PM
    Author     : hedgehog
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>

<%@page language="java" contentType="text/html" pageEncoding="UTF-8"%>
<%

    if (session.getAttribute("UserType") == null) {
        out.println("You Should not be here.");
        response.sendRedirect("admin.jsp");
    }

%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Delete Quiz questions</title>
    </head>
    <body>
        <form action="delete" method="POST">
        <jsp:include page="adminheader.jsp" />
                <sql:setDataSource var="dbsource" driver="com.mysql.jdbc.Driver"
                           url="jdbc:mysql://localhost:3306/javasql"
                           user="root"
                           password=""></sql:setDataSource>
        <sql:query dataSource="${dbsource}" var="questions">
            select * from ${adminquiztype} 
        </sql:query>
        <br>
    <center> <h1>${adminquiztype} Query Deletion</h1></center>
        <br>
        <div style="padding: 20px;">
        <table class="table table-hover table-bordered table-info">
  <thead class="thead-dark">
    <tr>
      <th scope="col">Q_ID</th>
      <th scope="col">Question</th>
      <th scope="col">Option 1</th>
      <th scope="col">Option 2</th>
      <th scope="col">Option 3</th>
      <th scope="col">Option 4</th>
      <th scope="col">Correct Answer</th>
      <th scope="col">Remove</th>


    </tr>
        
  </thead>
  <tbody>
  
      <c:forEach  var="question" items="${questions.rows}">
     <tr>
      <th scope="row">${question.questionid}</th>
      <td>${question.question}</td>
      <td>${question.opt1}</td>
      <td>${question.opt2}</td>
      <td>${question.opt3}</td>
      <td>${question.opt4}</td>
      <td>${question.ropt}</td>
      <td><a href="deletecontroller.jsp?id=${question.questionid}"><button type="button" class="delete">Delete</button></a></td>


    </tr>  
      </c:forEach>
   

  
  </tbody></table>
<!--         <center><input class="btn btn-success" type="submit" value="Submit"></center>-->
        <br><br><br><br>
        </div>
          </form>

    </body>
    <jsp:include page="footer.jsp" />
</html>
