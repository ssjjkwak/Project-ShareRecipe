package org.kosta.sharecipe.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class FrontControllerServlet
 */
@WebServlet("*.do")
public class FrontControllerServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	/**
	 * permitAllList : 비로그인 상태에서 접근 가능한 컨트롤러 리스트 이 리스트에 저장된 컨트롤러는 인증체크를 하지 않는다
	 */
	private ArrayList<String> permitAllList;

	@Override
	public void init() throws ServletException {
		this.permitAllList = new ArrayList<String>();
		permitAllList.add("LoginController");
		permitAllList.add("RegisterMemberController");
		permitAllList.add("RegisterIdCheckController");
		permitAllList.add("HomeController");
			}
	
	/**
	 * 로그인 인증 여부를 체크하는 메서드
	 */
	public boolean checkLogin(HttpServletRequest request, String command) {
		boolean result = false;
		HttpSession session = request.getSession(false);
		// 인증이 필요한 컨트롤러이고 세션이 null 또는 세션 안의 mvo가 null 이면
		if (permitAllList.contains(command) == false && (session == null || session.getAttribute("mvo") == null)) {
			System.out.println("***" + command + " 인증이 필요한 서비스이므로 로그인해야함***");
			result = true;
		}
		return result;
	}

	protected void doDispatch(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		try {
			String uri = request.getRequestURI();// /semi-project-11-8/RecipeListController.do
			String contextPath = request.getContextPath();// /semi-project-11-8
			String command = uri.substring(contextPath.length() + 1, uri.length() - 3);// Controller class명만 추출 : RecipeListController
																						
			//공통인증정책
			if(checkLogin(request,command)) {
				response.sendRedirect("HomeController.do");
				return;
			}
			
			Controller controller = HandlerMapping.getInstance().create(command);
			String path = controller.execute(request, response);
			if (path.startsWith("redirect:")) {
				response.sendRedirect(path.substring(9));// redirect: 을 제외한 경로로 이동시킨다
			} else {
				request.getRequestDispatcher(path).forward(request, response);
			}
		} catch (Exception e) {
			e.printStackTrace();
			response.sendRedirect("error.jsp");
		}
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		this.doDispatch(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		this.doDispatch(request, response);
	}
}
