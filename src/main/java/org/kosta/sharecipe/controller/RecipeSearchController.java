package org.kosta.sharecipe.controller;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.kosta.sharecipe.model.RecipeDAO;
import org.kosta.sharecipe.model.RecipeVO;

public class RecipeSearchController implements Controller {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		ArrayList<RecipeVO> list = new ArrayList<RecipeVO>();
		String search = request.getParameter("search");
		System.out.println(search);
		list = RecipeDAO.getInstance().searchTitleRecipe(search);
		System.out.println(search+list);
		request.setAttribute("list", list);
		return "board/recipe-titleSearch-list.jsp";
	}

}
