<%-- 
    Document   : adminlogin
    Created on : 7 Sep, 2019, 6:14:18 PM
    Author     : hedgehog
--%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="s" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Admin Login</title>
    </head>
    <body>
 <c:if test="${ empty param.username or empty param.password}">
      <c:redirect url="admin.jsp" >
              <c:param name="errMsg" value="Please Enter UserName and Password" />
      </c:redirect>
       
    </c:if>
     
    <c:if test="${not empty param.username and not empty param.password}">
      <s:setDataSource var="ds" driver="com.mysql.jdbc.Driver"
                       url="jdbc:mysql://localhost:3306/javasql"
                       user="root" password=""/>
 
      <s:query dataSource="${ds}" var="selectQ">
        select count(*) as vals from admintable
        where username='${param.username}'
        and password='${param.password}'
      </s:query>
 
      <c:forEach items="${selectQ.rows}" var="r">
        <c:choose>
          <c:when test="${r.vals gt 0}">
            <c:set scope="session"
                   var="username"
                   value="${param.username}"/>
             <c:set scope="session"
                   var="UserType"
                   value="${param.admin}"/>
            <c:redirect url="welcomeadmin.jsp"/>
          </c:when>
          <c:otherwise>
            <c:redirect url="login.jsp" >
              <c:param name="errMsg" value="Username/password does not match" />
            </c:redirect>
          </c:otherwise>
        </c:choose>
 
      </c:forEach>
 
    </c:if>
    </body>
</html>
