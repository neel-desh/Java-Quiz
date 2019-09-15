<%-- 
    Document   : update
    Created on : 7 Sep, 2019, 6:51:32 PM
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
        <title>Quiz Question Update</title>
    </head>
    <body>
        <jsp:include page="adminheader.jsp" />
        
        
                <sql:setDataSource var="dbsource" driver="com.mysql.jdbc.Driver"
                           url="jdbc:mysql://localhost:3306/javasql"
                           user="root"
                           password=""></sql:setDataSource>
        <sql:query dataSource="${dbsource}" var="questions">
            select * from ${adminquiztype} 
        </sql:query>
        <br>
    <center> <h1>${adminquiztype} Query Update</h1></center>
        <br>
        <h3>${questionupdatepagemsg}</h3>
        <div style="overflow-x:auto;">
        <table class="table table-hover table-bordered table-info mb-0" >
  <thead class="thead-dark">
    <tr>
      <th scope="col">Q_ID</th>
      <th scope="col">Question</th>
      <th scope="col">Option 1</th>
      <th scope="col">Option 2</th>
      <th scope="col">Option 3</th>
      <th scope="col">Option 4</th>
      <th scope="col">Right option</th>
      <th scope="col">Update</th>


    </tr>
        
  </thead>
  <tbody>
  
      <c:forEach  var="question" items="${questions.rows}">
          <form action="questupdatecontoller" method="POST">
     <tr>
      <th scope="row">${question.questionid}</th>
      <input type="hidden" name="questionid" value="${question.questionid}">
      <td><input type="text" name="question" value="${question.question}"></td>
      <td><input type="text" name="opt1" value="${question.opt1}"></td>
      <td><input type="text" name="opt2" value="${question.opt2}"></td>
      <td><input type="text" name="opt3" value="${question.opt3}"></td>
      <td><input type="text" name="opt4" value="${question.opt4}"></td>
      <td><input type="text" name="ropt" value="${question.ropt}"></td>
      <td><input type="submit" value="Update" ></td>


    </tr> 
    </form>
      </c:forEach>
   

  
  </tbody></table>
<!--         <center><input class="btn btn-success" type="submit" value="Submit"></center>-->
<center>${questionupdated}</center>
        </div>
        <br><br><br><br>
          

    <jsp:include page="footer.jsp" />
    </body>
</html>