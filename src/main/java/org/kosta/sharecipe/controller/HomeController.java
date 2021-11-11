package org.kosta.sharecipe.controller;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.kosta.sharecipe.model.RecipeDAO;
import org.kosta.sharecipe.model.RecipeVO;

public class HomeController implements Controller {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		request.setAttribute("popular", "board/recipe-popular.jsp");
		
		request.setAttribute("latest", "board/recipe-latest-list.jsp");
		//최신순 레시피
		ArrayList<RecipeVO> list=RecipeDAO.getInstance().getLatestRecipe();
		request.setAttribute("latestList", list);
		return "layout.jsp";
	}

}
