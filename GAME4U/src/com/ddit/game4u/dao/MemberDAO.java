package com.ddit.game4u.dao;

import java.sql.SQLException;

import com.ddit.game4u.dto.MemberVO;

public interface MemberDAO {
	
	//아이디로 멤버
	public MemberVO getMemberById(String email) throws SQLException;
	
	void insertMember(MemberVO member) throws SQLException;

	public void updateMember(MemberVO member) throws SQLException;

	public void updatePicture(MemberVO member) throws SQLException;

}
