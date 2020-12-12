package com.ddit.game4u.action.member;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ddit.game4u.action.Action;
import com.ddit.game4u.dto.MemberVO;
import com.ddit.game4u.service.MemberService;

public class RegistAction implements Action{
	
	private MemberService memberService;
	public void setUserService(MemberService memberService) {
		this.memberService = memberService;
	}
	
	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String url = "";
		String result = "";
		
		String email = request.getParameter("email");
		String pwd = request.getParameter("pwd");
		String name = request.getParameter("name");
		
		MemberVO member = new MemberVO();
		member.setEmail(email);
		member.setName(name);
		member.setPwd(pwd);
		
		try {
			memberService.regist(member);
			result = "ok";
		} catch (SQLException e) {
			result = "no";
			e.printStackTrace();
		}
		
		response.setContentType("text/plain;charset=utf-8");
		PrintWriter out = response.getWriter();
		out.print(result);
		
		return url;
	}
	
	
}
