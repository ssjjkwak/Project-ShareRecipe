package org.kosta.sharecipe.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.kosta.sharecipe.model.RecipeDAO;

public class RecipeUpdateFormController implements Controller {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		// 로그인 체크
		/*		HttpSession session = request.getSession(false);
				if (session == null || session.getAttribute("mvo") == null)
					return "redirect:ListController.do"; */
		
		//요청방식 post 체크
		
		//번호를 가져오지 못해서 하드코딩한 상태
		request.setAttribute("rvo", RecipeDAO.getInstance().getRecipeByNo(request.getParameter("recipeNo")));
				
		return "board/recipe-update.jsp";
	}

}
