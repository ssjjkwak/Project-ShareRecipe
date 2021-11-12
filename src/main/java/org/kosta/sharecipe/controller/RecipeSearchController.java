package org.kosta.sharecipe.controller;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.kosta.sharecipe.model.PagingBean;
import org.kosta.sharecipe.model.RecipeDAO;
import org.kosta.sharecipe.model.RecipeVO;

public class RecipeSearchController implements Controller {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
	
		String search = request.getParameter("search");
		HttpSession session = request.getSession();
		session.setAttribute("search", search);
		search=(String) session.getAttribute("search");
		int totalPostCount=RecipeDAO.getInstance().getTotalSearchPostCount(search);
		
		String pageNo=request.getParameter("pageNo"); //recipe-list.jsp에서 클라이언트가 페이지 조작시 쿼리스트링으로 넘어온다
		PagingBean pagingBean=null;
		if(pageNo==null) { //client가 넘긴 페이지. 정보가 없고 그냥 첫화면이면
			 pagingBean=new PagingBean(totalPostCount);//현재 페이지가 기본 1 page로 할당되어 있음(생성자1개짜리)
		}else {
			//client에서 보낸 page번호로 할당한다 //pagingBean생성자2개짜리 보면parameter가 (총게시물수,현재페이지)이다
			pagingBean=new PagingBean(totalPostCount,Integer.parseInt(pageNo)); 
			
		}
		
		ArrayList<RecipeVO> list = RecipeDAO.getInstance().searchTitleRecipe(search,pagingBean);
		
		request.setAttribute("list", list);
		request.setAttribute("pagingBean", pagingBean);
		return "board/recipe-titleSearch-list.jsp";
	}

}
