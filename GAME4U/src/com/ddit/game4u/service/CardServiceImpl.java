package com.ddit.game4u.service;

import java.sql.SQLException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.ddit.game4u.dao.CardDAO;
import com.ddit.game4u.dto.CardVO;

public class CardServiceImpl implements CardService{
	
	private CardDAO cardDAO;
	public void setCardDAO(CardDAO cardDAO) {
		this.cardDAO = cardDAO;
	}
	
	@Override
	public void registCard(CardVO card) throws SQLException {
		int cardno = cardDAO.getCardSeq();
		card.setCardno(cardno);
		cardDAO.insertCard(card);
		
	}
	
	@Override
	public void remove(int cardno)  throws SQLException{
		cardDAO.deleteCard(cardno);
		
	}
	
	@Override
	public Map<String, Object> getCardAndComList(String email)  throws SQLException{
		Map<String, Object> dataMap = new HashMap<String, Object>();
		
		List<CardVO> cardList = cardDAO.selectCardList(email);
		List<String> comList = cardDAO.selectComList();
		
		dataMap.put("cardList", cardList);
		dataMap.put("comList", comList);
		
		return dataMap;
	}
	
}
