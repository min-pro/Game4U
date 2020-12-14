package com.ddit.game4u.action.member;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ddit.game4u.action.Action;
import com.ddit.game4u.dto.CardVO;
import com.ddit.game4u.dto.MemberVO;
import com.ddit.game4u.service.CardService;

public class CardRegistAction implements Action{
	
	private CardService cardService;
	public void setCardService(CardService cardService) {
		this.cardService = cardService;
	}
	
	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String url = "redirect:/member/myPage.do";
		
		String email = ((MemberVO)request.getSession().getAttribute("loginUser")).getEmail();
		String coName = request.getParameter("coName");
		String valDate = request.getParameter("valDate");
		int cvc = Integer.parseInt(request.getParameter("cvc"));
		String cardNum = request.getParameter("cardNum");
		String name = request.getParameter("name");
		String phone = request.getParameter("phone");
		String zip = request.getParameter("zip");
		String addr1 = request.getParameter("addr1");
		String addr2 = request.getParameter("addr2");
		
		CardVO card = new CardVO();
		card.setAddr1(addr1);
		card.setAddr2(addr2);
		card.setCardNum(cardNum);
		card.setCoName(coName);
		card.setCvc(cvc);
		card.setZip(zip);
		card.setValDate(valDate);
		card.setPhone(phone);
		card.setName(name);
		card.setEmail(email);
		
		try {
			cardService.registCard(card);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		return url;
		
		
	}
}










