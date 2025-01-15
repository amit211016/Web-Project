package com.login;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;

import com.validation.*;

import com.LoginModule.bean.User;
import com.LoginModule.dao.Dao;
import java.io.PrintWriter;

/**
 * Servlet implementation class Register
 */
@WebServlet("/Register")
public class Register extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	Dao dao;
	User user;
	Validate validate;
    
    
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//System.out.println("lksjldfj");
		dao = new Dao();
		user = new User();
		
		validate = new Validate();
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		PrintWriter out = response.getWriter();
		if(dao.checkUserExist(username)) {
			
			
			out.println("<!DOCTYPE html>");
	        out.println("<html>");
	        out.println("<head>");
	        out.println("<title>Already Registered</title>");
	        out.println("<style>");
	        out.println("body { font-family: Arial, sans-serif; background-color: #f4f4f4; display: flex; justify-content: center; align-items: center; height: 100vh; margin: 0; }");
	        out.println(".container { text-align: center; background-color: #fff; padding: 20px; border-radius: 5px; box-shadow: 0 0 10px rgba(0, 0, 0, 0.1); }");
	        out.println("button { padding: 10px 20px; font-size: 16px; color: white; background-color: #007BFF; border: none; border-radius: 5px; cursor: pointer; }");
	        out.println("button:hover { background-color: #0056b3; }");
	        out.println("</style>");
	        out.println("<script>");
	        out.println("window.onload = function() {");
	        out.println("  alert('You are already registered! Please log in.');");
	        out.println("};");
	        out.println("</script>");
	        out.println("</head>");
	        out.println("<body>");
	        out.println("<div class='container'>");
	        out.println("<h1>Already Registered</h1>");
	        out.println("<p>Please click the button below to go to the login page.</p>");
	        out.println("<form action='Login.jsp'>");
	        out.println("<button type='submit'>Go to Login</button>");
	        out.println("</form>");
	        out.println("</div>");
	        out.println("</body>");
	        out.println("</html>");
		    
			
		}else {
			user.setPassword(password);
			user.setUserName(username);
			
			validate = new Validate();
			if(validate.isValidPassword(password)) {
			dao.addUser(user);
			out.println("<!DOCTYPE html>");
	        out.println("<html>");
	        out.println("<head>");
	        out.println("<title>Registration Success</title>");
	        out.println("<style>");
	        out.println("body { font-family: Arial, sans-serif; background-color: #f4f4f4; display: flex; justify-content: center; align-items: center; height: 100vh; margin: 0; }");
	        out.println(".container { text-align: center; background-color: #fff; padding: 20px; border-radius: 5px; box-shadow: 0 0 10px rgba(0, 0, 0, 0.1); }");
	        out.println("button { padding: 10px 20px; font-size: 16px; color: white; background-color: #007BFF; border: none; border-radius: 5px; cursor: pointer; }");
	        out.println("button:hover { background-color: #0056b3; }");
	        out.println("</style>");
	        out.println("</head>");
	        out.println("<body>");
	        out.println("<div class='container'>");
	        out.println("<h1>Registered Successfully!</h1>");
	        out.println("<p>Click the button to Go login page.</p>");
	        out.println("<form action='Login.jsp'>");
	        out.println("<button type='submit'>Go to Login</button>");
	        out.println("</form>");
	        out.println("</div>");
	        out.println("</body>");
	        out.println("</html>");
			} else {
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
				out.println("<h3>Registration Failed: Password is Not FullFilling The Following Requirement !</h3>");
				out.println("<h6>Password must be at least 8 characters long <br> contain At least one uppercase letter, one lowercase letter, one number, and one special character.<br>\r\n"
						+ "                Special characters you can use : ! @ # $ % ^ & * ( ) _ + - = { } [ ] : ; \" ' < > , . ? / \\ | ~ ` </h6>");
				out.println("<a href='Register.jsp' class='try-again'>Try again</a>");
				out.println("</div>");
				out.println("</body></html>");

			
		}
	}

	
}
}
