package com.login;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;
import java.io.PrintWriter;

import com.LoginModule.bean.User;
import com.LoginModule.dao.Dao;

/**
 * Servlet implementation class Login
 */
//@WebServlet("/Login")
public class Login extends HttpServlet {
	Dao dao;
	User user;
	
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	@Override
    public void init() throws ServletException {
     
    }
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		user=new User();
		dao = new Dao();
		
		String uname = request.getParameter("username");
		String pass  = request.getParameter("password");
		
		user.setPassword(pass);
		user.setUserName(uname);
		HttpSession session = request.getSession();
		PrintWriter out = response.getWriter();
		if(dao.checkUserExist(user)) {
			session.setAttribute("uname", uname);
			
			response.sendRedirect("Welcome.jsp");
			
		}else { 
			
			response.setContentType("text/html");

			out.println("<html><head>");
			out.println("<style>");
			out.println("body {");
			out.println("    font-family: Arial, sans-serif;");
			out.println("    display: flex;");
			out.println("    justify-content: center;");
			out.println("    align-items: center;");
			out.println("    height: 100vh;");
			out.println("    margin: 0;");
			out.println("    background-color: #f4f4f4;");
			out.println("}");
			out.println(".error-box {");
			out.println("    text-align: center;");
			out.println("    background-color: #f8d7da;");
			out.println("    border: 1px solid #f5c6cb;");
			out.println("    padding: 20px;");
			out.println("    border-radius: 5px;");
			out.println("    color: #721c24;");
			out.println("    font-size: 24px;");
			out.println("    font-weight: bold;");
			out.println("    box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);");
			out.println("}");
			out.println("a.try-again {");
			out.println("    display: inline-block;");
			out.println("    padding: 10px 20px;");
			out.println("    background-color: #f44336;");
			out.println("    color: white;");
			out.println("    text-decoration: none;");
			out.println("    border-radius: 5px;");
			out.println("    margin-top: 20px;");
			out.println("    font-weight: bold;");
			out.println("}");
			out.println("a.try-again:hover {");
			out.println("    background-color: #d32f2f;");
			out.println("}");
			out.println("</style>");
			out.println("</head><body>");
			out.println("<div class='error-box'>");
			out.println("<h3>Login Failed: Username or Password is incorrect!</h3>");
			out.println("<a href='Login.jsp' class='try-again'>Try again</a>");
			out.println("</div>");
			out.println("</body></html>");

			
		}
	}

}
