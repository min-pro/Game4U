package com.ddit.game4u.service;

import java.sql.SQLException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.ddit.game4u.dao.GameDAO;
import com.ddit.game4u.dto.GameVO;

public class GameServiceImpl implements GameService{
	
	private GameDAO gameDAO;
	public void setGameDAO(GameDAO gameDAO) {
		this.gameDAO = gameDAO;
	}
	
	@Override
	public Map<String, Object> getStoreMap() throws SQLException {
		
		Map<String, Object> storeMap = new HashMap<>();
		
		List<GameVO> popularList = gameDAO.getPopularList();
		List<GameVO> newList = gameDAO.getNewList();
		List<GameVO> saleList = gameDAO.getSaleList();
		List<GameVO> freeList = gameDAO.getFreeList();
		
		storeMap.put("popularList", popularList);
		storeMap.put("newList", newList);
		storeMap.put("saleList", saleList);
		storeMap.put("freeList", freeList);
		
		return storeMap;
	}
}
