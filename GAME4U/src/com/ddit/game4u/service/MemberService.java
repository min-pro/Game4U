package com.ddit.game4u.service;

import java.sql.SQLException;

import javax.servlet.http.HttpServletRequest;

import com.ddit.game4u.dto.MemberVO;
import com.ddit.game4u.exception.InvalidPasswordException;
import com.ddit.game4u.exception.NotFoundIDException;

public interface MemberService {
	
	public String login(String email, String pwd, HttpServletRequest request) throws InvalidPasswordException, NotFoundIDException;
	
	boolean emailCheck(String email) throws SQLException;

	void regist(MemberVO member) throws SQLException;
	
}
