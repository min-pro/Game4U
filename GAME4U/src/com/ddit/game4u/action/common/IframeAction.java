package com.ddit.game4u.action.common;

import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ddit.game4u.action.Action;
import com.ddit.game4u.dto.MenuVO;
import com.ddit.game4u.service.MenuService;

public class IframeAction implements Action{
	
	private MenuService menuService;
	public void setMenuService(MenuService menuService) {
		this.menuService = menuService;
	}
	

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		String url = "/common/iframe";
		
		List<MenuVO> menuList;
		try {
			menuList = menuService.getMainMenuList();
			request.setAttribute("menuList", menuList);
			
		} catch (SQLException e) {
			url = null;
			e.printStackTrace();
		}
		
		
		return url;
	}

}
