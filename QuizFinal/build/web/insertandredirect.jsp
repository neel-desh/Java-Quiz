<%-- 
    Document   : insertandredirect
    Created on : 10 Sep, 2019, 11:10:38 AM
    Author     : hedgehog
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>
<%@page language="java" contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    
if(session.getAttribute("UserType")==null){
response.sendRedirect("admin.jsp");
}

%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
       
    </head>
    <body>               <sql:setDataSource driver="com.mysql.jdbc.Driver"
                           url="jdbc:mysql://localhost:3306/javasql"
                           user="root"
                           password=""></sql:setDataSource>
              <sql:update  var="updatedTable">
INSERT INTO ${adminquiztype} (questionid,question,opt1,opt2,opt3,opt4,ropt) VALUES (?,?,?,?,?,?,?)
<sql:param value="${param.questionnumber}" />
<sql:param value="${param.question}" />
<sql:param value="${param.opt1}" />
<sql:param value="${param.opt2}" />
<sql:param value="${param.opt3}" />
<sql:param value="${param.opt4}" />
<sql:param value="${param.ropt}" />

</sql:update>
<c:if test="${updatedTable>=1}">
<font size="5" color='green'> Congratulations ! Data inserted
successfully.</font>
<c:redirect url="insertquizquestions.jsp"></c:redirect>
</c:if>
    </body>
</html>
