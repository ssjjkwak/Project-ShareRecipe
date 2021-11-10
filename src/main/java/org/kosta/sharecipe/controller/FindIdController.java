package org.kosta.sharecipe.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.kosta.sharecipe.model.MemberDAO;
import org.kosta.sharecipe.model.MemberVO;

public class FindIdController implements Controller{

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		String name=request.getParameter("name");
		StringBuilder sb=new StringBuilder();
		sb.append(request.getParameter("email1"));
		sb.append(request.getParameter("eamil2"));
		String email=sb.toString();
		MemberVO vo=MemberDAO.getInstance().FindMemberId(name,email);
		String path=null;
		if(vo==null) {
			path="redirect:member/findid-fail.jsp";
		}else {
			path="redirect:member/findid-ok.jsp";
			request.setAttribute("mvo", vo);
		}
		return path;
	}
	
}
