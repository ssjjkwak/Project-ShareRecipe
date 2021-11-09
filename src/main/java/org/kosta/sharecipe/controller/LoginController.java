package org.kosta.sharecipe.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.kosta.sharecipe.model.MemberDAO;
import org.kosta.sharecipe.model.MemberVO;

public class LoginController implements Controller {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		String id = request.getParameter("id");
		String password = request.getParameter("password");
		MemberVO mvo = MemberDAO.getInstance().login(id, password);
		if(mvo==null)
			return "redirect:member/login-fail.jsp";
		HttpSession session = request.getSession();
		session.setAttribute("mvo", mvo);
		return "redirect:HomeController.do";
	}
}
