package com.ddit.game4u.action.member;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ddit.game4u.action.Action;
import com.ddit.game4u.exception.InvalidPasswordException;
import com.ddit.game4u.exception.NotFoundIDException;
import com.ddit.game4u.service.MemberService;

public class LoginAction implements Action {
	
	private MemberService service;
	public void setMemberService(MemberService service) {
		this.service = service;
	}

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String url = "";
		String email = request.getParameter("email");
		String pwd = request.getParameter("pwd");
		String result = "";
		response.setContentType("text/html;charset=utf-8");
		PrintWriter out = response.getWriter();
		try {
			result = service.login(email, pwd, request);
		} catch (NotFoundIDException | InvalidPasswordException e) {
			e.printStackTrace();
			result="no";
		}catch (Exception e) {
			e.printStackTrace();
		}
		//request.setAttribute("result", result);
		System.out.println("result : " + result);
		out.println(result);
		return url;
	}

}
