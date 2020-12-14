package com.ddit.game4u.service;

import java.sql.SQLException;
import java.util.Map;

import com.ddit.game4u.dto.CardVO;

public interface CardService {
	void registCard(CardVO card) throws SQLException;

	void remove(int cardno) throws SQLException;

	Map<String, Object> getCardAndComList(String email) throws SQLException;
}
