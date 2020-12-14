package com.ddit.game4u.action.member;

import java.io.IOException;
import java.sql.SQLException;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ddit.game4u.action.Action;
import com.ddit.game4u.dto.MemberVO;
import com.ddit.game4u.service.CardService;

public class MyPageAction implements Action{
	
	private CardService cardService;
	public void setCardService(CardService cardService) {
		this.cardService = cardService;
	}
	
	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String url = "/member/mypage";
		
		String email = ((MemberVO)request.getSession().getAttribute("loginUser")).getEmail();
		
		try {
			Map<String, Object> dataMap = cardService.getCardAndComList(email);
			request.setAttribute("dataMap", dataMap);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		
		return url;
	}
}
