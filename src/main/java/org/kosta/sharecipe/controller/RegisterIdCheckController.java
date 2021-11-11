package org.kosta.sharecipe.controller;

import java.sql.SQLException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.kosta.sharecipe.model.MemberDAO;

public class RegisterIdCheckController implements Controller {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		String joinId = request.getParameter("joinId");
    	int result = 0;
		try {
			result = MemberDAO.getInstance().checkId(joinId);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		request.setAttribute("result", result);
		return "AjaxView";
				
	}

}
