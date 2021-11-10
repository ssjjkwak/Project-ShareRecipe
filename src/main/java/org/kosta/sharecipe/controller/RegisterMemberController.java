package org.kosta.sharecipe.controller;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.kosta.sharecipe.model.MemberDAO;
import org.kosta.sharecipe.model.MemberVO;

public class RegisterMemberController implements Controller {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		//요청방식 POST 체크
				if(request.getMethod().equals("POST")==false) {
					throw new ServletException("회원가입은 POST방식만 허용됩니다");
				}
		String id=request.getParameter("joinId");
		String password=request.getParameter("joinPw");
		String name=request.getParameter("joinName");
		StringBuilder sb=new StringBuilder();
		sb.append(request.getParameter("joinAddr1"));
		sb.append(" ");
		sb.append(request.getParameter("joinAddr2"));
		sb.append(" ");
		sb.append(request.getParameter("joinAddr3"));
		sb.append(" ");
		sb.append(request.getParameter("joinAddr4"));
		String address = sb.toString();
		String birthday=request.getParameter("joinBirthday");
		StringBuilder sb1=new StringBuilder();
		sb1.append(request.getParameter("joinMail1"));
		sb1.append(request.getParameter("joinMail2"));
		String email=sb1.toString();
		String tel=request.getParameter("joinTel");
		MemberVO vo=new MemberVO(id,password,name,address,null,birthday,email,tel);
		MemberDAO.getInstance().register(vo);
		MemberDAO.getInstance().login(id, password);
		HttpSession session = request.getSession();
		session.setAttribute("mvo", vo);
		return "index.jsp";
	}

}
