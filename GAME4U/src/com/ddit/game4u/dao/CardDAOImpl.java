package com.ddit.game4u.dao;

import java.sql.SQLException;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.ddit.game4u.dto.CardVO;

public class CardDAOImpl implements CardDAO{
	
	private SqlSessionFactory sqlSessionFactory;
	public void setSqlSessionFactory(SqlSessionFactory sqlSessionFactory) {
		this.sqlSessionFactory = sqlSessionFactory;
	}
	
	@Override
	public int getCardSeq()  throws SQLException{
		SqlSession session = sqlSessionFactory.openSession();
		int cardno = session.selectOne("Card-Mapper.getCardSeq");
		session.close();
		return cardno;
	}

	@Override
	public void insertCard(CardVO card)  throws SQLException{
		SqlSession session = sqlSessionFactory.openSession(true);
		session.selectOne("Card-Mapper.insertCard", card);
		session.close();
		
	}
	
	@Override
	public void deleteCard(int cardno)  throws SQLException{
		SqlSession session = sqlSessionFactory.openSession(true);
		session.selectOne("Card-Mapper.deleteCard", cardno);
		session.close();
		
	}
	@Override
	public List<CardVO> selectCardList(String email)  throws SQLException{
		SqlSession session = sqlSessionFactory.openSession();
		List<CardVO> cardList = session.selectList("Card-Mapper.selectCardList", email);
		session.close();
		return cardList;
	}
	@Override
	public List<String> selectComList()  throws SQLException{
		SqlSession session = sqlSessionFactory.openSession();
		List<String> comList = session.selectList("Card-Mapper.selectComList");
		session.close();
		return comList;
	}
}













