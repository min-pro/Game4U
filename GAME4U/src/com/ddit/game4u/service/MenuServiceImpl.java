package com.ddit.game4u.service;

import java.sql.SQLException;
import java.util.List;

import com.ddit.game4u.dao.MenuDAO;
import com.ddit.game4u.dto.MenuVO;

public class MenuServiceImpl implements MenuService {
	
	
	private MenuDAO menuDAO;// = MenuDAOImpl.getInstance();
	public void setMenuDAO(MenuDAO menuDAO) {
		this.menuDAO=menuDAO;
	}
	
	@Override
	public List<MenuVO> getMainMenuList() throws SQLException {
		List<MenuVO> menuList=menuDAO.selectMainMenu();
		return menuList;
	}


}




