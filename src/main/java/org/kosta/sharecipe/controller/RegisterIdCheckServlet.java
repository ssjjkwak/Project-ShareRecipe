package org.kosta.sharecipe.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.kosta.sharecipe.model.MemberDAO;

/**
 * Servlet implementation class RegisterIdCheckServlet
 */
@WebServlet("/RegisterIdCheckServlet")
public class RegisterIdCheckServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html;charset=utf-8");
    	PrintWriter out = response.getWriter();
    	String joinId = request.getParameter("joinId");
    	int result = 0;
		try {
			result = MemberDAO.getInstance().checkId(joinId);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
    	out.print(result);
    	System.out.println(result);
    	out.close();
	}

}
