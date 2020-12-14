package com.ddit.game4u.action.common;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ddit.game4u.action.Action;

public class AuthCheckAction implements Action{

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String url = "";
		
		String authNum = (String) request.getSession().getAttribute("authNum");
		String checkNum = request.getParameter("checkNum");
		
		String result = "";
		if(authNum.equals(checkNum)) {
			result = "ok";
		} else {
			result = "no";
		}
		
		response.setContentType("text/plain;charset=utf-8");
		PrintWriter out = response.getWriter();
		out.print(result);
		
		return url;
	}

}
