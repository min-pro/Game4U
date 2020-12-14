package com.ddit.game4u.dao;

import java.sql.SQLException;
import java.util.List;

import com.ddit.game4u.dto.CardVO;

public interface CardDAO {

	int getCardSeq() throws SQLException;

	void insertCard(CardVO card) throws SQLException;

	void deleteCard(int cardno) throws SQLException;

	List<CardVO> selectCardList(String email) throws SQLException;

	List<String> selectComList() throws SQLException;

}
