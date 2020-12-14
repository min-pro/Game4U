package com.ddit.game4u.dao;

import java.sql.SQLException;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.ddit.game4u.dto.MemberVO;

public class MemberDAOImpl implements MemberDAO{
	
	private SqlSessionFactory factory;
	public void setSqlSessionFactory(SqlSessionFactory factory) {
		this.factory = factory;
	}
	
	@Override
	public MemberVO getMemberById(String email) throws SQLException {
		SqlSession session = factory.openSession();
		MemberVO user = session.selectOne("Member-Mapper.getMemberByEmail",email);
		session.close();
		return user;
	}
	
	@Override
	public void insertMember(MemberVO member) throws SQLException {
		SqlSession session = factory.openSession(true);
		session.update("Member-Mapper.insertMember", member);
		session.close();
	}
	
	@Override
	public void updateMember(MemberVO member) {
		SqlSession session = factory.openSession(true);
		session.update("Member-Mapper.updateMember", member);
		session.close();
	}
	
	@Override
	public void updatePicture(MemberVO member) throws SQLException {
		SqlSession session = factory.openSession(true);
		session.update("Member-Mapper.updatePicture", member);
		session.close();
	}
}
