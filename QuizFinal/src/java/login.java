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
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.RequestDispatcher;
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
@WebServlet(urlPatterns = {"/login"})
public class login extends HttpServlet {

 
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        try (PrintWriter out = response.getWriter()) {
            response.setContentType("text/html;charset=UTF-8");
            /* TODO output your page here. You may use following sample code. */
            String username = request.getParameter("username");
            String password = request.getParameter("password");
            //out.println(username);
            //out.println(password);
            //Connection Variables
            Connection con = null;
            String url = "jdbc:mysql://localhost:3306/javasql";
            String dbusername = "root";
            String dbpassword = "";
            Statement statement = null;
            ResultSet resultset = null;
            String getdbemail = "";
            String getdbpassword ="";
            String getdbuserid = "";
            String getdbrealemail = "";
            
            
            //Try catch loads the mysql class
            
                Class.forName("com.mysql.jdbc.Driver");
             //mysql catch block end

            con = DriverManager.getConnection(url, dbusername, dbpassword);
            //connection testing string
            //out.println("Printing connection object " + con);

            //Check Login details if mismatch throws error.
            statement = con.createStatement();
            resultset = statement.executeQuery("select username,password,unique_id,email from loginreg");

            while (resultset.next()) // Until next row is present otherwise it return false
            {                
                getdbuserid = resultset.getString("unique_id"); 
                getdbemail = resultset.getString("username"); 
                getdbpassword = resultset.getString("password");
                getdbrealemail = resultset.getString("email");

                if (username.equals(getdbemail) && password.equals(getdbpassword)) {
                    HttpSession session = request.getSession();
                    session.setAttribute("username", username);
                    session.setAttribute("useremail", getdbrealemail);
                    session.setAttribute("useruniqueid", getdbuserid);
                   // RequestDispatcher rd = request.getRequestDispatcher("quiz.jsp");
                    response.sendRedirect("quiz.jsp");
                    return;
                     //rd.forward(request, response);
                    
                }else{
                //response.sendRedirect("login.jsp");
                RequestDispatcher rd = request.getRequestDispatcher("login.jsp");
                    
                    //return;
                    HttpSession session = request.getSession();
                    session.setAttribute("LoginError", "Incorrect Username or password.");
                    rd.forward(request, response);
                    
                }
                
            }

        } catch (SQLException ex) {
            Logger.getLogger(login.class.getName()).log(Level.SEVERE, null, ex);
        }catch (ClassNotFoundException ex) {
                Logger.getLogger(login.class.getName()).log(Level.SEVERE, null, ex);
            }//connection catch block end
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
