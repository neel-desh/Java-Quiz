<%-- 
    Document   : updatehighscore
    Created on : 15 Sep, 2019, 4:19:40 PM
    Author     : hedgehog
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%

    if (session.getAttribute("username") == null) {
        response.sendRedirect("login.jsp");
    }

%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
       
    </head>
    <body>
        <jsp:include page="header.jsp" />
                <sql:setDataSource driver="com.mysql.jdbc.Driver"
                           url="jdbc:mysql://localhost:3306/javasql"
                           user="root"
                           password=""></sql:setDataSource>
        <sql:query var="userscore">
            select score from loginreg where username='${username}'  
        </sql:query>
        <c:set var="newscore" value="${param.newscore}"/>
      
     <c:forEach  var="user" items="${userscore.rows}">
 
      
 <c:set var="newscore" value="${newscore + user.score}"/>
       <sql:update>
          Update loginreg set score='${newscore}' where username='${username}'
      </sql:update>
          
      </c:forEach>
      <c:redirect url="quiz.jsp"></c:redirect>
    </body>
</html>
