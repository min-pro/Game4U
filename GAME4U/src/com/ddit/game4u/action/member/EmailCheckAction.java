package com.ddit.game4u.action.member;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ddit.game4u.action.Action;
import com.ddit.game4u.service.MemberService;
import com.ddit.game4u.utils.SendEmailUtil;

public class EmailCheckAction implements Action{
	
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
		try {
			boolean check = memberService.emailCheck(email);
			if(check) { //check 이 true일 경우 이메일 중복
				result = "no";
			} else {
				String authNum = SendEmailUtil.sendAuthNum(email);
				request.getSession().setAttribute("authNum", authNum);
				result = "ok";
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		response.setContentType("text/plain;charset=utf-8");
		PrintWriter out = response.getWriter();
		out.print(result);
		
		return url;
	}
}
