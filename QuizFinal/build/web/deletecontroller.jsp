<%-- 
    Document   : deletecontroller
    Created on : 7 Sep, 2019, 7:00:25 PM
    Author     : hedgehog
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*,java.util.*"%>

<%

    if (session.getAttribute("UserType") == null) {
        //out.println("You Should not be here.");
        response.sendRedirect("login.jsp");
    }

%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Delete data</title>
        <meta http-equiv="Refresh" content="6;url=next_page.jsp">
    </head>
    <body>
         
<%
String id=request.getParameter("id");
try
{
Class.forName("com.mysql.jdbc.Driver");
Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/javasql", "root", "");
Statement st=conn.createStatement();
int i=st.executeUpdate("DELETE FROM "+session.getAttribute("quiztype")+" WHERE questionid="+id);
out.println("Data Deleted Successfully!");
}
catch(Exception e)
{
System.out.print(e);
e.printStackTrace();
}
%> 
    </body> 
</html>
