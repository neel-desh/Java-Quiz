<%-- 
    Document   : quiz
    Created on : 3 Sep, 2019, 7:42:45 PM
    Author     : hedgehog
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>

<%@page language="java" contentType="text/html" pageEncoding="UTF-8"%>
<%

    if (session.getAttribute("username") == null) {
        response.sendRedirect("login.jsp");
    }

%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Quiz Page</title>
        <link rel="stylesheet" type="text/css" href="singlepage.css">
    </head>
    <jsp:include page="header.jsp" />
    <c:set var="quiztype" value="${param.quiztype}" scope="session" />
    <body style="background-color: #efe2ea; color:#2c8098;" onload="rerun()">
        
        <sql:setDataSource driver="com.mysql.jdbc.Driver"
                           url="jdbc:mysql://localhost:3306/javasql"
                           user="root"
                           password=""></sql:setDataSource>
        <sql:query var="qna">
            select * from ${quiztype} order by rand() limit 5
        </sql:query>
            <%
            response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");///http ver 1.1 k liye
            response.setHeader("Pragma", "no-cache");//http version 1.0 k lye

            %>
            
        <form action="answercheck" method="POST">
            <br><b><span id="timer"></span></b>
            <center><h3>${quiztype} Quiz</h3></center> 
            <!--counter-->
            <c:set var="count" value="0" scope="page" />

            <c:forEach var="qnadisplay" items="${qna.rows}" >
                    <c:set var="count" value="${count+1}" scope="page" />
                    <ol id="${count}" style="width:550px;height: 200px; margin: 0 auto;border-style: solid; border-radius:7px;border-color: #c26573;">


                        <h3><span><c:out value="${count}"></c:out>]&nbsp;</span><c:out value="${qnadisplay.question}"></c:out></h3>
                        <input type="radio" name="${qnadisplay.questionid}" value="${qnadisplay.opt1}" required=""><c:out value="${qnadisplay.opt1}"></c:out><br>
                        <input type="radio" name="${qnadisplay.questionid}"value="${qnadisplay.opt2}"><c:out value="${qnadisplay.opt2}"></c:out><br>
                        <input type="radio" name="${qnadisplay.questionid}" value="${qnadisplay.opt3}"><c:out value="${qnadisplay.opt3}"></c:out><br>
                        <input type="radio" name="${qnadisplay.questionid}" value="${qnadisplay.opt4}"><c:out value="${qnadisplay.opt4}"></c:out>


                            <br>

                        </ol>
                        <br>

                </c:forEach>
            
            <center> 
                <h1 id="displayinformation">Quiz Ended.<br>Press Click the Submit button.</h1>
                <button class="btn btn-success">Next Question</button>
                 <input id="sbbtn" type="submit" value="Submit Quiz" class="btn btn-success">                 <br><br>   
            </center>
            <br><br>
        </form>
    </body>
    <jsp:include page="footer.jsp" />
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.3.1/jquery.min.js">
    </script>

    <script>
    $(document).ready(function(){
                $("#displayinformation").hide();
                $("#sbbtn").hide();
        $("ol").hide();
        //$("div").nextAll("div").hide();
       $("#1").first().show();
        var btncounter = 1;
    $("button").click(function(){
        btncounter++;
        $("ol").hide();
        $("#"+btncounter).show()
         var condisplay = $("ol").length + 1;
        if(btncounter == condisplay){
        $("button").hide();
        $("#sbbtn").show();
        $("#displayinformation").show();
        }
//$("#parentdiv").children().first().css({"color":"red","border":"2px solid black"});
//$("div").next("div").show();
//$save.next().show();
        



});
       
       
   });
    
</script>
<script type="text/javascript">
    object.onunload = function(){
                $("#displayinformation").hide();
                $("#sbbtn").hide();
        $("ol").hide();
        //$("div").nextAll("div").hide();
       $("#1").first().show();
        var btncounter = 1;
    $("button").click(function(){
        btncounter++;
        $("ol").hide();
        $("#"+btncounter).show()
         var condisplay = $("ol").length + 1;
        if(btncounter == condisplay){
        $("button").hide();
        $("#sbbtn").show();
        $("#displayinformation").show();
        }
//$("#parentdiv").children().first().css({"color":"red","border":"2px solid black"});
//$("div").next("div").show();
//$save.next().show();
        



});
       
       
   };
</script>
    <script type="text/javascript">
var count = 360;
var redirect = "logout";
 
function countDown(){
    var timer = document.getElementById("timer");
    if(count > 0){
        count--;
        timer.innerHTML = "Quiz ends in "+count+" seconds.";
        setTimeout("countDown()", 1000)
    }else{
        window.location.href = redirect;
    }
}
countDown();


</script>
</html>
