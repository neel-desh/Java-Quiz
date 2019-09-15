/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.Enumeration;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author hedgehog
 */
@WebServlet(urlPatterns = {"/answercheck"})
public class answercheck extends HttpServlet {

    
       

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
            Connection con = null;
            String url = "jdbc:mysql://localhost:3306/javasql";
            String dbusername = "root";
            String dbpassword = "";
            Statement statement = null;
            ResultSet resultset = null;
         response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
             try {
                Class.forName("com.mysql.jdbc.Driver");
            } catch (ClassNotFoundException ex) {
                Logger.getLogger(login.class.getName()).log(Level.SEVERE, null, ex);
            }
            con = DriverManager.getConnection(url, dbusername, dbpassword);
            Enumeration paramNames = request.getParameterNames();
            statement = con.createStatement();
            HttpSession session = request.getSession();
            String quiztype = (String) session.getAttribute("quiztype");
            //out.println(quiztype);
            int displaycounter = 0;
            int scorecounter = 0;
            out.println("<head>\n" +
"<link href=\"https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css\" rel=\"stylesheet\" id=\"bootstrap-css\">\n" +
"    <script src=\"https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.bundle.min.js\"></script>\n" +
"    <script src=\"https://cdnjs.cloudflare.com/ajax/libs/jquery/3.4.1/jquery.slim.min.js\"></script>\n" +
"    </head>\n" +
"           <nav class=\"navbar navbar-expand-lg navbar-dark bg-dark static-top\">\n" +
"  <div class=\"container\">\n" +
"    <div class=\"collapse navbar-collapse\" id=\"navbarResponsive\">\n" +
"      <ul class=\"navbar-nav ml-auto\">\n" +
"        <li class=\"nav-item\">\n" +
"          <a class=\"nav-link\" href=\"users.jsp\">Check HighScore</a>\n" +
"        </li>\n" +
"               \n" +
"        <li class=\"nav-item\">\n" +
"          <a class=\"nav-link\" href=\"userprofile.jsp\">Update Profile</a>\n" +
"        </li>\n" +
"\n" +
"\n" +
"        <li class=\"nav-item\">\n" +
"          <a class=\"nav-link\" href=\"sendfeedback.jsp\">Send Feedback</a>\n" +
"        </li>\n" +
"         <li class=\"nav-item\">\n" +
"          <a class=\"nav-link\" href=\"logout\">Logout</a>\n" +
"        </li>\n" +
"      </ul>\n" +
"    </div>\n" +
"  </div>\n" +
"</nav><body><br><br>");
           while(paramNames.hasMoreElements()){
               displaycounter++;
           String paramName = (String)paramNames.nextElement();
           resultset = statement.executeQuery("select question,ropt from "+quiztype+" where questionid="+paramName+"");
           
           String [] paramValues = request.getParameterValues(paramName);
           
           for(String paraval:paramValues){
               
                  while (resultset.next()) // Until next row is present otherwise it return false
            { 
                      
                    //we also have equals igonre case which will ignore casae sensitive data. 
                     // out.println("param names:"+paramName+"<br>");
                     // out.println("param values:"+paraval+"<br>");
                    String ropt = resultset.getString("ropt");
                      String question = resultset.getString("question");

                    if(paraval.equals(ropt)){
                        scorecounter++;
                        
                       // out.println("<h2 style='color:hotpink;'>Correct Answer</h2>");
                        out.println("<center>\n" +
"<div  style=\"border: solid; border-color: green;background-color:lemon;width:800px;height:auto;padding:8px;\">\n" +
"	<h1 align=\"left\">\n" +
"		<span>"+displaycounter+"</span> \n" +
"		"+question+"<span style=\"float:right;\">+1</span></h1>\n" +
"<div align=\"left\">\n" +
"	<ul >\n" +
"		<li>Your answer: "+paraval+"</li>\n" +
"		<li>Correct answer: "+ropt+"</li>\n" +
"		\n" +
"	</ul>\n" +
"	</div>\n" +
"\n" +
"	<br>\n" +
"</div><br>\n" +
"</center>");
                    }else{
                           out.println("<center>\n" +
"<div  style=\"border: solid; border-color: red;background-color:;width:800px;height:auto;padding:8px;\">\n" +
"	<h1 align=\"left\">\n" +
"		<span>"+displaycounter+"</span> \n" +
"		"+question+"<span style=\"float:right;\">0</span></h1>\n" +
"<div align=\"left\">\n" +
"	<ul >\n" +
"		<li>Your answer: "+paraval+"</li>\n" +
"		<li>Correct answer: "+ropt+"</li>\n" +
"		\n" +
"	</ul>\n" +
"	</div>\n" +
"\n" +
"	<br>\n" +
"</div><br>\n" +
"</center>");
                    }
                     
                      
                      
                  }
         
           }
           }
           out.println("    <center><form method=\"POST\" action=\"updatehighscore.jsp\">\n" +
"            \n" +
"            <input type=\"hidden\" name=\"newscore\" value="+scorecounter+">\n" +
"            <input class=\"btn btn-success\" type=\"submit\" value=\"Submit Result\">\n" +
"        </form>\n" +
"    </center>");
           out.println("<br><br><br><br></body><footer id=\"sticky-footer\" style=\"\n" +
"           position:fixed;left: 0;\n" +
"  bottom: 0;\n" +
"  width: 100%;\n" +
"  background-color: #212529;\n" +
"  color: white;\n" +
"  text-align: center;\">\n" +
"    <div class=\"container text-center\">\n" +
"        <h3>Copyright &copy; neeldeshmukh</h3>\n" +
"        <br>\n" +
"    </div>\n" +
"  </footer>");
//System.out.println(scorecounter);
        } catch (SQLException ex) {
            Logger.getLogger(answercheck.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
