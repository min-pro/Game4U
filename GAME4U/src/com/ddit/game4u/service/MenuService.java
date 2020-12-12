package com.ddit.game4u.service;

import java.sql.SQLException;
import java.util.List;

import com.ddit.game4u.dto.MenuVO;

public interface MenuService {
	
	List<MenuVO> getMainMenuList()throws SQLException;
	
}
