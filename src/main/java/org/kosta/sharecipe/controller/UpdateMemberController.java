package org.kosta.sharecipe.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.kosta.sharecipe.model.MemberDAO;
import org.kosta.sharecipe.model.MemberVO;


public class UpdateMemberController implements Controller {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		//로그인 체크 
		HttpSession session=request.getSession(false);
		if(session==null||session.getAttribute("mvo")==null) {//로그인 상태가 아니면 index로 이동시킨다 
			return "redirect:index.jsp";
		}
		String id=request.getParameter("upId");
		String password=request.getParameter("upPw");
		String name=request.getParameter("upName");
		StringBuilder sb=new StringBuilder();
		String address=sb.append(request.getParameter("upAddr1")).append(" ").append("upAddr2").append(" ").append("upAddr3").append(" ").append("upAddr4").toString();
		String tel=request.getParameter("upTel");	
		MemberVO vo=new MemberVO(id, password, name, address, null, null, null, tel);
		MemberDAO.getInstance().updateMember(vo);
		session.setAttribute("mvo", vo);
		return "redirect:member/update-result.jsp";
	}

}












