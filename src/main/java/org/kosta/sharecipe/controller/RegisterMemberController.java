package org.kosta.sharecipe.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.kosta.sharecipe.model.MemberDAO;
import org.kosta.sharecipe.model.MemberVO;

public class RegisterMemberController implements Controller {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		String id=request.getParameter("joinId");
		String password=request.getParameter("joinPw");
		String name=request.getParameter("joinName");
		StringBuilder sb=new StringBuilder();
		String address=sb.append(request.getParameter("joinAddr1")).append("joinAddr2").append("joinAddr3").append("joinAddr4").toString();
		System.out.println(address);
		String birthday=request.getParameter("joinBirthday");
		StringBuilder sb1=new StringBuilder();
		String eMail=sb1.append(request.getParameter("joinMail1")).append(request.getParameter("joinMail2")).toString();
		String tel=request.getParameter("joinTel");
		//MemberVO vo=new MemberVO(id,password,name,address,null,birthday,eMail,tel);
		//MemberDAO.getInstance().register(vo);
		MemberDAO.getInstance().login(id, password);
		return "";
	}

}
