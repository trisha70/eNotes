package com.Servlet;

import java.io.IOException;

import com.Db.DBConnect;
import com.DAO.PostDAO;
import com.User.Post;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;


@WebServlet("/NoteEditServlet")
public class NoteEditServlet extends HttpServlet {
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			Integer noteid=Integer.parseInt(request.getParameter("noteid"));
			String Title=request.getParameter("title");
			String Content=request.getParameter("content");
			PostDAO dao=new PostDAO(DBConnect.getConn());
			boolean f=dao.PostUpdate(noteid, Title,Content);
			if(f) {
				System.out.println("data updated successfully!!");
				HttpSession session =request.getSession();
				session.setAttribute("updateMsg", "Notes Updated Successfully!");
				response.sendRedirect("showNotes.jsp");
			}else {
				System.out.println("an unexpected error occured!");
			}
		}
		catch(Exception e) {
			e.printStackTrace();
		}
	}

}
