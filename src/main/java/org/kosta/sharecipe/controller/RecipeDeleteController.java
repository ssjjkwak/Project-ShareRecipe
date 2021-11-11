package org.kosta.sharecipe.controller;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.kosta.sharecipe.model.RecipeDAO;

public class RecipeDeleteController implements Controller {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		//요청방식 POST 체크
				if(request.getMethod().equals("POST")==false) {
					throw new ServletException("레시피 삭제는 POST방식만 허용됩니다");
				}
		
		String no=request.getParameter("no");
		RecipeDAO.getInstance().deleteRecipeByNo(no);
		return "RecipeListController.do";
	}

}
