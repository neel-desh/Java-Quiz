<%-- 
    Document   : index
    Created on : 6 Sep, 2019, 12:23:51 PM
    Author     : hedgehog
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!DOCTYPE html>
<!--
To change this license header, choose License Headers in Project Properties.
To change this template file, choose Tools | Templates
and open the template in the editor.
-->
<html>
    <head>
        <title></title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
    </head>
    <body style="background-color:#778899;">
            <center>
                <br><br><br>
                <div style="height:400px;width:600px;background-color:#A9A9A9;
  border-style: solid;
  border-radius: 20px;">
        <h2 style="padding:8px;">Welcome to best java quiz</h2>
        <p style="padding:2px;">In this online quiz you can test your skills of programming by login in using email id and password of your choice.</p><p style="padding:2px;"> This is a competitive quiz.
            The quiz is based on certain time
            clean and nice user interface.</p><p>
            Build using java Servlet and Jsp.<br><br>
        You can see your results at the end of the quiz. Also you can compare your high score with others.</p>
        <form action="quiz.jsp">
            <input type="submit" value="Play Quiz!">
        </form>
                </div>
    </center>
</body>
<jsp:include page="footer.jsp"/>
</html>

