package org.kosta.sharecipe.controller;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.kosta.sharecipe.model.MemberDAO;
import org.kosta.sharecipe.model.MemberVO;


public class UpdateMemberController implements Controller {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		//요청방식 POST 체크
				if(request.getMethod().equals("POST")==false) {
					throw new ServletException("회원정보 수정은 POST방식만 허용됩니다");
				}
		
		//로그인 체크 
		HttpSession session=request.getSession(false);
		if(session==null||session.getAttribute("mvo")==null) {//로그인 상태가 아니면 index로 이동시킨다 
			return "redirect:index.jsp";
		}
		String id=request.getParameter("upId");
		String password=request.getParameter("upPw");
		String name=request.getParameter("upName");
		StringBuilder sb=new StringBuilder();
		sb.append(request.getParameter("upAddr1"));
		sb.append(" ");
		sb.append(request.getParameter("upAddr2"));
		sb.append(" ");
		sb.append(request.getParameter("upAddr3"));
		sb.append(" ");
		sb.append(request.getParameter("upAddr4"));
		String address = sb.toString();		
		String tel=request.getParameter("upTel");	
		MemberVO vo=new MemberVO(id, password, name, address, null, null, null, tel);
		MemberDAO.getInstance().updateMember(vo);
		session.setAttribute("mvo", vo);
		return "redirect:member/update-result.jsp";
	}

}












