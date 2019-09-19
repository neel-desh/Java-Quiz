<%-- 
    Document   : welcomeadmin
    Created on : 15 Sep, 2019, 2:23:12 PM
    Author     : hedgehog
--%>



<%@page language="java" contentType="text/html" pageEncoding="UTF-8"%>
<%
    
if(session.getAttribute("UserType")==null){
response.sendRedirect("login.jsp");
}

%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Welcome </title>
    </head>
    <jsp:include page="adminheader.jsp" />
    <body style="background-color:#778899;">
    <center>
        
        <div>
         <br><br>
                <div style="height:400px;width:600px;background-color:#778899;
  border-style: solid;
  border-radius: 20px;">
                    <form action="welcomeadmin.jsp"method="POST" >
                    <h2 style="padding:8px;">Welcome ${username}</h2>
        <p style="padding:2px;">In below Option you can set Quiz type for session. although its changeable. But to start from the base</p>
        <label>Select Quiz: </label>
        <select name="adminquiztype">
            <option name="java" value="Java">Java</option>          
            <option name="html" value="Html">Html</option>
            <option name="angular" value="Angular">Angular</option>
            <option name="php" value="Php">Php</option>
           <option name="php" value="Random">Random</option>
        </select>
            <input type="submit" value="Set Quiz !">
                    </form><br><br>
                    
                    
           <h3>You have selected ${adminquiztype}</h3>
          
                </div>
                   <%
           String adminquiztypesetter = (String)request.getParameter("adminquiztype");
           
           session.setAttribute("adminquiztype", adminquiztypesetter);
           
           
           %>
           
           
    </center>
    </body>
    <jsp:include page="footer.jsp" />
</html>
