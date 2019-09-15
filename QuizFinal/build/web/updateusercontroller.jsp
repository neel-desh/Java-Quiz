<%-- 
    Document   : updateusercontroller
    Created on : 7 Sep, 2019, 8:38:33 PM
    Author     : hedgehog
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%

    if (session.getAttribute("username") == null) {
        response.sendRedirect("login.jsp");
    }

%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
         <sql:setDataSource driver="com.mysql.jdbc.Driver"
                           url="jdbc:mysql://localhost:3306/javasql"
                           user="root"
                           password=""></sql:setDataSource>
<c:choose>
    <c:when test="${not empty param.username
               && not empty param.email
               && not empty param.password}">       
        <sql:update  var="newDetails">
            UPDATE loginreg SET username=?, email=?, password=? where unique_id=?
            <sql:param value="${param.username}" />
            <sql:param value="${param.email}" />
            <sql:param value="${param.password}" />
            <sql:param value="${param.uniqueid}" />
        </sql:update>
            <c:set var="updated" value="Data updated successfully" scope="session" />
            <c:redirect url="userprofile.jsp"/>
    </c:when>
    <c:otherwise>
        <font color="#cc0000">Please enter mandatory information.</font>
    </c:otherwise>
       
    </c:choose>

    </body>
</html>
