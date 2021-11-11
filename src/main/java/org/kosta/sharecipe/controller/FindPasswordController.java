package org.kosta.sharecipe.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.kosta.sharecipe.model.MemberDAO;
import org.kosta.sharecipe.model.MemberVO;

public class FindPasswordController implements Controller {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		String id = request.getParameter("id");
		StringBuilder mail=new StringBuilder();
		mail.append(request.getParameter("mail1"));
		mail.append(request.getParameter("mail2"));
		String email=mail.toString();
		MemberVO pvo = MemberDAO.getInstance().FindMemberPw(id, email);
		System.out.println(id+email+pvo);
		System.out.println(pvo);
		if(pvo==null) {
			return "member/findpassword-fail.jsp";
		}else {
			request.setAttribute("pvo", pvo);
			return "member/findpassword-ok.jsp";
		}
		
	}

}
