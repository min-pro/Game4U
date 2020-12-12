package com.ddit.game4u.service;

import java.sql.SQLException;
import java.util.Map;

import com.ddit.game4u.dto.GameVO;

public interface GameService {
	Map<String, Object> getStoreMap() throws SQLException;
}
