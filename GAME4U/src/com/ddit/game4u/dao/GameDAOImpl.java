package com.ddit.game4u.dao;

import java.sql.SQLException;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.ddit.game4u.dto.GameVO;

public class GameDAOImpl implements GameDAO{

	private SqlSessionFactory sqlSessionFactory;
	public void setSqlSessionFactory(SqlSessionFactory sqlSessionFactory) {
		this.sqlSessionFactory = sqlSessionFactory;
	}
	
	@Override
	public List<GameVO> getPopularList() throws SQLException {
		SqlSession session = sqlSessionFactory.openSession();
		List<GameVO> list = session.selectList("Game-Mapper.getPopularList");
		session.close();
		return list;
	}

	@Override
	public List<GameVO> getNewList() throws SQLException {
		SqlSession session = sqlSessionFactory.openSession();
		List<GameVO> list = session.selectList("Game-Mapper.getNewList");
		session.close();
		return list;
	}

	@Override
	public List<GameVO> getSaleList() throws SQLException {
		SqlSession session = sqlSessionFactory.openSession();
		List<GameVO> list = session.selectList("Game-Mapper.getSaleList");
		session.close();
		return list;
	}

	@Override
	public List<GameVO> getFreeList() throws SQLException {
		SqlSession session = sqlSessionFactory.openSession();
		List<GameVO> list = session.selectList("Game-Mapper.getFreeList");
		session.close();
		return list;
	}


}
