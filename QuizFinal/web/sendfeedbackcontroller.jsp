<%-- 
    Document   : sendfeedbackcontroller
    Created on : 15 Sep, 2019, 2:08:50 PM
    Author     : hedgehog
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>
<%@page language="java" contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        
    </head>
    <body>
                    <sql:setDataSource driver="com.mysql.jdbc.Driver"
                           url="jdbc:mysql://localhost:3306/javasql"
                           user="root"
                           password=""></sql:setDataSource>
              <sql:update  var="sendfeedback">
INSERT INTO feedback (username,message,email) VALUES (?,?,?)
<sql:param value="${username}" />
<sql:param value="${param.message}" />
<sql:param value="${useremail}" />

</sql:update>
<c:if test="${sendfeedback>=1}">
<font size="5" color='green'> Thanks for your valuable feedback.</font>
<c:redirect url="sendfeedback.jsp"></c:redirect>
</c:if>
    </body>
</html>
