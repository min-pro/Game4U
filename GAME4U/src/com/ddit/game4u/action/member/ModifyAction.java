package com.ddit.game4u.action.member;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ddit.game4u.action.Action;
import com.ddit.game4u.dto.MemberVO;
import com.ddit.game4u.service.MemberService;

public class ModifyAction implements Action{
	
	private MemberService memberService;
	public void setMemberService(MemberService memberService) {
		this.memberService = memberService;
	}
	
	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String url = "redirect:/member/myPage.do";
		
		String email = request.getParameter("email");
		String name = request.getParameter("name");
		String pwd = request.getParameter("pwd");
		
		
		MemberVO member = new MemberVO();
		
		member.setEmail(email);
		member.setName(name);
		if(pwd == null || pwd.equals("")) {
			member.setPwd("");
		} else {
			member.setPwd(pwd);
		}
		try {
			memberService.modify(member, request);
			MemberVO loginUser = memberService.getMemberByEmail(email);
			
			request.getSession().setAttribute("loginUser", loginUser);
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		return url;
	}

}
