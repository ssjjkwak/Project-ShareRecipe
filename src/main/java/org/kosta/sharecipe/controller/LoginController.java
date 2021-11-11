package org.kosta.sharecipe.controller;

import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.kosta.sharecipe.model.MemberDAO;
import org.kosta.sharecipe.model.MemberVO;

public class LoginController implements Controller {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		// 요청방식 POST 체크
		if (request.getMethod().equals("POST") == false) {
			throw new ServletException("로그인은 POST방식만 허용됩니다");
		}
		String id = request.getParameter("id");
		String password = request.getParameter("password");
		MemberVO mvo = MemberDAO.getInstance().login(id, password);
		if (mvo == null) {
			return "redirect:member/login-fail.jsp";
		} else {
			HttpSession session = request.getSession();
			session.setAttribute("mvo", mvo);
			//조회수 무단 증가 방지
			session.setAttribute("myrecipeNo", new ArrayList<String>());
			return "index.jsp";
		}
	}
}
