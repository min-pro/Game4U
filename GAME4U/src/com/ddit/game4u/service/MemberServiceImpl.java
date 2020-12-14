package com.ddit.game4u.service;

import java.sql.SQLException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import com.ddit.game4u.dao.MemberDAO;
import com.ddit.game4u.dto.MemberVO;
import com.ddit.game4u.exception.InvalidPasswordException;
import com.ddit.game4u.exception.NotFoundIDException;
import com.ddit.game4u.utils.PasswordEncrypt;


public class MemberServiceImpl implements MemberService{
	
	private MemberDAO memberDAO;
	public void setMemberDAO(MemberDAO memberDAO) {
		this.memberDAO = memberDAO;
	}
	@Override
	public String login(String email, String pwd, HttpServletRequest request) {
		MemberVO user = null;
		boolean isAdmin = false; 
		String encryptedPwd = null;
		HttpSession session = request.getSession();
		String result = "no";
		try {
			user = memberDAO.getMemberById(email);
			encryptedPwd = PasswordEncrypt.pwdToSHA256(pwd);
			if(user==null) {
				throw new NotFoundIDException();
			}
			if(user.getAdmin()==1) { // 1 : 관리자
				isAdmin = true;
			}
			if(encryptedPwd.equals(user.getPwd())) {
				if(!isAdmin) {
					result = "ok";
				}else {
					result = "admin";
				}
				session.setAttribute("loginUser", user);
				session.setMaxInactiveInterval(6*60); 
			}else { // 패스워드 불일치시
				throw new InvalidPasswordException();
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}catch (Exception e) {
			e.printStackTrace();
		}
		
		return result;
	}
	
	@Override
	public boolean emailCheck(String email) throws SQLException {
		boolean result = false;
		MemberVO member = memberDAO.getMemberById(email);
		if(member != null && member.getEmail().equals(email)) {
			result = true;
		}
		
		return result;
	}
	
	@Override
	public void regist(MemberVO member) throws SQLException {
		String pwd = member.getPwd();
		pwd = PasswordEncrypt.pwdToSHA256(pwd);
		member.setPwd(pwd);
		
		memberDAO.insertMember(member);
	}
	
	@Override
	public void modify(MemberVO member, HttpServletRequest request) throws SQLException {
		String pwd = member.getPwd();
		
		if(pwd == null || pwd.equals("")) {
			pwd = ((MemberVO)request.getSession().getAttribute("loginUser")).getPwd();
			member.setPwd(pwd);
		} else {
			pwd = PasswordEncrypt.pwdToSHA256(pwd);
			member.setPwd(pwd);
		}
		
		memberDAO.updateMember(member);
		
	}
	@Override
	public void pictureUpload(MemberVO member) throws SQLException {
		memberDAO.updatePicture(member);
	}
	
	@Override
	public MemberVO getMemberByEmail(String email) throws SQLException {
		MemberVO member = memberDAO.getMemberById(email);
		return member;
	}
}








