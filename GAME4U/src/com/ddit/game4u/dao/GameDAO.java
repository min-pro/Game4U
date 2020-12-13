package com.ddit.game4u.dao;

import java.sql.SQLException;
import java.util.List;

import com.ddit.game4u.dto.GameVO;

public interface GameDAO {

	List<GameVO> getPopularList() throws SQLException;

	List<GameVO> getNewList() throws SQLException;

	List<GameVO> getSaleList() throws SQLException;

	List<GameVO> getFreeList() throws SQLException;

}
