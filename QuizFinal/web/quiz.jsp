<%-- 
    Document   : quiz
    Created on : 3 Sep, 2019, 7:42:45 PM
    Author     : hedgehog
--%>

<%@page language="java" contentType="text/html" pageEncoding="UTF-8"%>
<%
    
if(session.getAttribute("username")==null){
response.sendRedirect("login.jsp");
}

%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Quiz Page</title>
    </head>
    <jsp:include page="header.jsp" />
    <body style="background-color:#778899;">
    <center>
        
        <div>
         <br><br>
                <div style="height:400px;width:600px;background-color:#778899;
  border-style: solid;
  border-radius: 20px;">
                    <form action="playquiz.jsp"method="POST" >
                    <h2 style="padding:8px;">Welcome ${username}</h2>
                    <h3 style="color:red;"> Read the Information below!</h3>
                    <p style="padding:2px;"> Select the below option to play the type of quiz you want to play.<br><br></p>
        <label>Select Quiz: </label>
        <select name="quiztype" required="">
            <option name="java" value="Java">Java</option>          
            <option name="html" value="Html">Html</option>
            <option name="angular" value="Angular">Angular</option>
            <option name="php" value="Php">Php</option>
            <option name="random" value="Random">Random</option>

        </select>
            <input type="submit" value="Play Quiz!">
        </form>
                </div>
            
        
    </center>
    </body>
    <jsp:include page="footer.jsp" />
</html>
