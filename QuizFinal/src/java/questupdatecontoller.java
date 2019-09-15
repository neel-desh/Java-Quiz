/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import javax.servlet.http.HttpSession;
/**
 *
 * @author hedgehog
 */
@WebServlet(urlPatterns = {"/questupdatecontoller"})
public class questupdatecontoller extends HttpServlet {



    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
         try (PrintWriter out = response.getWriter()) {
            response.setContentType("text/html;charset=UTF-8");
            
            String Driver = "com.mysql.jdbc.Driver";
String url = "jdbc:mysql://localhost/javasql";
String uName ="root";
String pwd = "";
Connection conn=null;
 
try {
     HttpSession session = request.getSession();
      String quiztype=(String) session.getAttribute("quiztype");
  String id=request.getParameter("questionid");
String question=request.getParameter("question");
String opt1=request.getParameter("opt1");
String opt2=request.getParameter("opt2");
String opt3=request.getParameter("opt3");
String opt4=request.getParameter("opt4");
String ropt=request.getParameter("ropt");
Class.forName(Driver).newInstance();
conn = DriverManager.getConnection(url, uName, pwd);
Statement stmt = conn.createStatement();
String sql = "UPDATE "+quiztype+" SET question='"+question+"', opt1='"+opt1+"', opt2='"+opt2+"',opt3='"+opt3+"',opt4='"+opt4+"', ropt='"+ropt+"' WHERE questionid='"+id+"'";
  stmt.executeUpdate(sql);
response.sendRedirect("update.jsp");


 
} catch (ClassNotFoundException e) {
// TODO Auto-generated catch block
e.printStackTrace();
}
catch (SQLException e) {
// TODO Auto-generated catch block
e.printStackTrace();
}
catch (Exception e) {
// TODO Auto-generated catch block
e.printStackTrace();
}
finally{
try {
conn.close();
} catch (SQLException e) {
// TODO Auto-generated catch block
e.printStackTrace();
}
}
 
}
            
        }
        

}
