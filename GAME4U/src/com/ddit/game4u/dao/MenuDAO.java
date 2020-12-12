package com.ddit.game4u.dao;

import java.sql.SQLException;
import java.util.List;

import com.ddit.game4u.dto.MenuVO;

public interface MenuDAO {
	
	
	List<MenuVO> selectMainMenu()throws SQLException;
}
