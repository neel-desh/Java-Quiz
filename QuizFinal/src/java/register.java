/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
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
@WebServlet(urlPatterns = {"/register"})
public class register extends HttpServlet {

 


    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
                response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
    String username = request.getParameter("fname");
    String email = request.getParameter("email");
    String password = request.getParameter("password");
    //Database declarations
            
            String url = "jdbc:mysql://localhost:3306/javasql";
            String dbusername = "root";
            String dbpassword = "";

            
            
            //Try catch loads the mysql class
            try {
                Class.forName("com.mysql.jdbc.Driver");
            } catch (ClassNotFoundException ex) {
                Logger.getLogger(login.class.getName()).log(Level.SEVERE, null, ex);
            }//mysql catch block end
try{
            Connection con = null;
            PreparedStatement preparedStatement= null;
            con = DriverManager.getConnection(url, dbusername, dbpassword);
            
 
 
 String query = "insert into loginreg(username,email,password) values (?,?,?)"; 
    preparedStatement = con.prepareStatement(query);
    preparedStatement.setString(1, username);
    preparedStatement.setString(2, email);
    preparedStatement.setString(3, password);
 
    int i= preparedStatement.executeUpdate();
 
if (i!=0) {
                    HttpSession session = request.getSession();
                    session.setAttribute("username", username);
                    response.sendRedirect("quiz.jsp");
} else{
out.println("<br><br><br><center>There was some error while registration.");
out.println("<h2 style='color:red'>Fill all the fields in the form</h2></center>");

}
     }catch (SQLException ex) {
            Logger.getLogger(register.class.getName()).log(Level.SEVERE, null, ex);
        }

 

        } 
 
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
