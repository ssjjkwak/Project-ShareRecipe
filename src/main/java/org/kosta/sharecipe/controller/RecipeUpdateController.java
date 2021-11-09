package org.kosta.sharecipe.controller;

import java.io.File;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.tomcat.util.http.fileupload.FileItem;
import org.apache.tomcat.util.http.fileupload.disk.DiskFileItemFactory;
import org.apache.tomcat.util.http.fileupload.servlet.ServletFileUpload;
import org.apache.tomcat.util.http.fileupload.servlet.ServletRequestContext;
import org.kosta.sharecipe.common.FileManager;
import org.kosta.sharecipe.model.CategoryVO;
import org.kosta.sharecipe.model.MemberVO;
import org.kosta.sharecipe.model.RecipeDAO;
import org.kosta.sharecipe.model.RecipeVO;

public class RecipeUpdateController implements Controller {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		//int category = Integer.parseInt(request.getParameter("category_num"));
		
		//int no = Integer.parseInt(request.getParameter("no"));
		String title = request.getParameter("title");
		String content = request.getParameter("content");
		//String image = request.getParameter("image");
		
		
		
		RecipeVO recipeVO = new RecipeVO();
		recipeVO.setRecipeNo(3);
		CategoryVO cvo=new CategoryVO(); 
		cvo.setCategoryNo(1);
		recipeVO.setCategoryVO(cvo);
		recipeVO.setTitle(title);
		recipeVO.setContent(content);
		//recipeVO.setImage(image);
		
		
		int result = RecipeDAO.getInstance().updateRecipeByNo(recipeVO);
		if (result == 0) {
			System.out.println("등록실패");
			return "redirect:board/recipe-update-fail.jsp";
		} else {
			System.out.println("등록성공");
			return "redirect:board/recipe-update-ok.jsp";
		}

	}

}
