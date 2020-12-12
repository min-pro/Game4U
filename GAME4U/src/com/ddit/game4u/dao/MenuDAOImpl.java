package com.ddit.game4u.dao;

import java.sql.SQLException;
import java.util.List;

import org.apache.ibatis.session.SqlSession;

import com.ddit.game4u.dto.MenuVO;

public class MenuDAOImpl implements MenuDAO {
	
	
	private SqlSession sqlSession;
	public void setSqlSession(SqlSession sqlSession) {
		this.sqlSession = sqlSession;
	}
	
	@Override
	public List<MenuVO> selectMainMenu() throws SQLException {
		List<MenuVO> menuList = sqlSession.selectList("Menu-Mapper.selectMainMenu");
		return menuList;
	}

}




