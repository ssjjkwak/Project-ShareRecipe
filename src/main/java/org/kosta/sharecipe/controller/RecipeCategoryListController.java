package org.kosta.sharecipe.controller;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.kosta.sharecipe.model.PagingBean;
import org.kosta.sharecipe.model.RecipeDAO;
import org.kosta.sharecipe.model.RecipeVO;

public class RecipeCategoryListController implements Controller {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		int category_num = Integer.parseInt(request.getParameter("category_num"));
		int totalPostCount=RecipeDAO.getInstance().getTotalPostCountByCategory(category_num); //총게시물수 db연동후 받아오기 dao에 메서드있음
		
		String pageNo=request.getParameter("pageNo"); //recipe-list.jsp에서 클라이언트가 페이지 조작시 쿼리스트링으로 넘어온다
		
		PagingBean pagingBean=null;
		if(pageNo==null) { //client가 넘긴 페이지. 정보가 없고 그냥 첫화면이면
			 pagingBean=new PagingBean(totalPostCount);//현재 페이지가 기본 1 page로 할당되어 있음(생성자1개짜리)
		}else {
			//client에서 보낸 page번호로 할당한다 //pagingBean생성자2개짜리 보면parameter가 (총게시물수,현재페이지)이다
			pagingBean=new PagingBean(totalPostCount,Integer.parseInt(pageNo)); 
			
		}
		
		
		//페이징 정보
		ArrayList<RecipeVO> list=RecipeDAO.getInstance().getRecipeByCategory(category_num,pagingBean);
		request.setAttribute("list", list);
		request.setAttribute("pagingBean", pagingBean); //리스트로보낸다
		
		/*
		 * String category_num = request.getParameter("category_num");
		 * ArrayList<RecipeVO>
		 * list=RecipeDAO.getInstance().getRecipeByCategory(category_num);
		 * request.setAttribute("list", list);
		 */
		 
		return "board/recipe-category-list.jsp";
	}

}
