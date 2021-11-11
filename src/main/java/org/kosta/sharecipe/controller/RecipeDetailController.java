package org.kosta.sharecipe.controller;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.kosta.sharecipe.model.RecipeDAO;
import org.kosta.sharecipe.model.RecipeVO;

public class RecipeDetailController implements Controller {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		//로그인 기능 구현 요망
		String recipeNo=request.getParameter("recipeNo");
		
		@SuppressWarnings("unchecked")
		ArrayList<String> myRecipeNo=(ArrayList<String>) request.getSession(false).getAttribute("myrecipeNo");
		if(myRecipeNo.contains(recipeNo)==false) {
			//조회수 증가
			RecipeDAO.getInstance().updateHits(recipeNo);
			myRecipeNo.add(recipeNo);
		}
		
		//상세보기
		RecipeVO rvo=RecipeDAO.getInstance().getRecipeByNo(recipeNo);
		request.setAttribute("rvo", rvo);
		return "board/recipe-detail.jsp";
		//return "index.jsp";
	}

}
