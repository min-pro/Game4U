package com.ddit.game4u.action.common;

import java.io.IOException;
import java.sql.SQLException;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ddit.game4u.action.Action;
import com.ddit.game4u.service.GameService;

public class IframeStoreAction implements Action{

	private GameService gameService;
	public void setGameService(GameService gameService) {
		this.gameService = gameService;
	}
	
	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		String url = "/common/store";
		
		try {
			Map<String, Object> storeMap = gameService.getStoreMap();
			request.setAttribute("storeMap", storeMap);
			
		} catch (SQLException e) {
			url = "";
			e.printStackTrace();
		}
		
		
		return url;
	}
	

}
