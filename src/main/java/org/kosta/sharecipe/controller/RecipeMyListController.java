package org.kosta.sharecipe.controller;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.kosta.sharecipe.model.MemberVO;
import org.kosta.sharecipe.model.PagingBean;
import org.kosta.sharecipe.model.RecipeDAO;
import org.kosta.sharecipe.model.RecipeVO;

public class RecipeMyListController implements Controller {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		HttpSession session= request.getSession(false);
		MemberVO mvo=(MemberVO)session.getAttribute("mvo");
		String id=mvo.getId();
		int totalPostCount=RecipeDAO.getInstance().getMyTotalPostCount(id); //총게시물수 db연동후 받아오기 dao에 메서드있음
		String pageNo=request.getParameter("pageNo"); //recipe-list.jsp에서 클라이언트가 페이지 조작시 쿼리스트링으로 넘어온다
		PagingBean pagingBean=null;
		if(pageNo==null) { //client가 넘긴 페이지. 정보가 없고 그냥 첫화면이면
			 pagingBean=new PagingBean(totalPostCount);//현재 페이지가 기본 1 page로 할당되어 있음(생성자1개짜리)
		}else {
			//client에서 보낸 page번호로 할당한다 //pagingBean생성자2개짜리 보면parameter가 (총게시물수,현재페이지)이다
			pagingBean=new PagingBean(totalPostCount,Integer.parseInt(pageNo)); 
			
		}
		//ArrayList<RecipeVO> list=RecipeDAO.getInstance().getRecipeList();
		ArrayList<RecipeVO> list=RecipeDAO.getInstance().getMyRecipeList(pagingBean,id);
		//게시물 리스트 정보
		request.setAttribute("list", list);
		//페이징 정보
		request.setAttribute("pagingBean", pagingBean); //리스트로보낸다
		
		return "board/recipe-my-list.jsp";
	}

}
