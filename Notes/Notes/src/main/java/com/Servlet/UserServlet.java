package com.Servlet;

import java.io.IOException;

import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import com.DAO.UserDAO;
import com.Db.DBConnect;
import com.User.UserDetails;

import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;
import jakarta.servlet.ServletException;
import jakarta.servlet.RequestDispatcher;


@WebServlet("/UserServlet")

public class UserServlet  extends HttpServlet{
   public void doPost(HttpServletRequest request,HttpServletResponse response)throws ServletException,IOException {
	   
	   String name=request.getParameter("fname");
	   String email=request.getParameter("uemail");
	   String password=request.getParameter("uPassword");
	   UserDetails us=new UserDetails();
	   us.setName(name);
       us.setEmail(email);
       us.setPassword(password);

	   UserDAO dao=new UserDAO(DBConnect.getConn());
	   boolean f=dao.addUser(us);
	   HttpSession session;
	   
	   if(f) {
		    session =request.getSession();
		   session.setAttribute("reg-success", "Registration Sucessful!");
		   response.sendRedirect("register.jsp");
	   }
	   else {
		   session =request.getSession();
		   session.setAttribute("failed-msg", "oops! something went wrong");
		   response.sendRedirect("register.jsp");
	   }
   }
}