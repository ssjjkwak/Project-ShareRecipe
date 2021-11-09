package org.kosta.sharecipe.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.kosta.sharecipe.model.MemberDAO;

public class UpdateMemberFormController implements Controller {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		request.setAttribute("mvo", MemberDAO.getInstance().getMemberById(request.getParameter("id")));
	      request.setAttribute("url", "update-member.jsp");
	      return "layout.jsp";
	}

}
