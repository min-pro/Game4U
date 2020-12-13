package com.ddit.game4u.dao;

import java.sql.SQLException;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.ddit.game4u.dto.MenuVO;

public class MenuDAOImpl implements MenuDAO {
	
	
	private SqlSessionFactory sqlSessionFactory;
	public void setSqlSessionFactory(SqlSessionFactory sqlSessionFactory) {
		this.sqlSessionFactory = sqlSessionFactory;
	}
	
	@Override
	public List<MenuVO> selectMainMenu() throws SQLException {
		SqlSession session = sqlSessionFactory.openSession();
		List<MenuVO> menuList = session.selectList("Menu-Mapper.selectMainMenu");
		session.close();
		
		return menuList;
	}

}




