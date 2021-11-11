package org.kosta.sharecipe.controller;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.kosta.sharecipe.model.RecipeDAO;
import org.kosta.sharecipe.model.RecipeVO;

public class RecipeCategoryListController implements Controller {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		String category_num = request.getParameter("category_num");
		ArrayList<RecipeVO> list=RecipeDAO.getInstance().getRecipeByCategory(category_num);
		request.setAttribute("list", list);
		return "board/recipe-category-list.jsp";
	}

}
