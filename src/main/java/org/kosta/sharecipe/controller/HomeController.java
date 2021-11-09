package org.kosta.sharecipe.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class HomeController implements Controller {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		request.setAttribute("popular", "board/recipe-popular.jsp");
		request.setAttribute("newWrite", "board/recipe-newWrite.jsp");
		return "layout.jsp";
	}

}
