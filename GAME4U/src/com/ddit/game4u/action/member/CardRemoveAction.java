package com.ddit.game4u.action.member;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ddit.game4u.action.Action;
import com.ddit.game4u.service.CardService;

public class CardRemoveAction implements Action{
	private CardService cardService;
	public void setCardService(CardService cardService) {
		this.cardService = cardService;
	}
	
	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String url = "redirect:/member/myPage.do";
		
		int cardno = Integer.parseInt(request.getParameter("cardno"));
		
		try {
			cardService.remove(cardno);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return url;
	}
	
}
