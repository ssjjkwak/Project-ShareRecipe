package org.kosta.sharecipe.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.kosta.sharecipe.model.RecipeDAO;

public class RecipeDeleteController implements Controller {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		//로그인 체크 필요
		
		String no=request.getParameter("no");
		RecipeDAO.getInstance().deleteRecipeByNo(no);
		return "RecipeListController.do";
	}

}
