package com.ddit.game4u.dispatcher;

import java.io.IOException;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ddit.game4u.action.Action;


public class FrontServlet extends HttpServlet {
	private HandlerMapper handlerMapper;

	@Override
	public void init(ServletConfig config) throws ServletException {
		String handlerMapperType = config.getInitParameter("handlerMapper");

		try {
			this.handlerMapper = (HandlerMapper) injectionBean(handlerMapperType);
			System.out.println("[FrontServlet] handlerMapper 가 준비되었습니다.");
		} catch (Exception e) {
			System.out.println("[FrontServlet] handlerMapper 가 준비되지 않았습니다.");
		}
	}
	
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		requestPro(request,response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		requestPro(request,response);
	}
	
	private void requestPro(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// 사용자 URI 검출
		String command = request.getRequestURI(); // contextPath 포함.
		
		System.out.println(command);

		if (command.indexOf(request.getContextPath()) == 0) { // contextPath 삭제
			command = command.substring(request.getContextPath().length());
			System.out.println(command);
		}
		
		// Action 실행 (HandlerMapper 의뢰 action 할당받음)
		Action act = null;
		String view = null;

		if (handlerMapper != null){
			act = handlerMapper.getAction(command);
			if (act == null) {
				System.out.println("!! not found : " + command);				
			} else {
				view = act.execute(request, response);
				if (view != null && !view.isEmpty()) {
					ViewResolver.view(request, response, view);
				}
			}
		}
		
		if(view == null) {
			response.sendError(HttpServletResponse.SC_NOT_FOUND);
		}

	}
	
	
	private Object injectionBean(String classType) throws Exception {
		Class<?> cls = Class.forName(classType);
		return cls.newInstance();
	}

}
