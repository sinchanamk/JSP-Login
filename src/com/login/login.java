package com.login;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import controller.UserServlet;
import Dao.UserDao;
@WebServlet("/login")
public class login extends HttpServlet
{
		public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
		{
		String Email=request.getParameter("email");
		String Password=request.getParameter("pass");
		LoginDao ld=new LoginDao();
		UserDao us=new UserDao();
	
		if(ld.check(Email, Password))
		{
			HttpSession session=request.getSession();
			session.setAttribute("Email", Email);
		//response.sendRedirect("welcome.jsp?name="+Email);
		response.sendRedirect("welcome.jsp");
			}
		else
		{
			response.sendRedirect("login.jsp");
		}
		
	}

		

	

}
