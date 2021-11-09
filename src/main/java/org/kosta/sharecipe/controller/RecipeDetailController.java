package org.kosta.sharecipe.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.kosta.sharecipe.model.RecipeDAO;
import org.kosta.sharecipe.model.RecipeVO;

public class RecipeDetailController implements Controller {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		//로그인 기능 구현 요망
		
		
		
		String no=request.getParameter("no");
		//조회수 증가
		RecipeDAO.getInstance().updateHits(no);
		//상세보기
		RecipeVO rvo=RecipeDAO.getInstance().getRecipeByNo(no);
		request.setAttribute("rvo", rvo);
		return "board/recipe-detail.jsp";
		//return "index.jsp";
	}

}
