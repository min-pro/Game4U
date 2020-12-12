package com.ddit.game4u.dto;

public class MemberVO {
	
	private String email;
	private String pwd;
	private String name;
	private int out; // 0: 안탈퇴(기본값), 1: 탈퇴
	private String picture;
	private int admin; // 0: 회원(기본값)  1: 어드민
	
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPwd() {
		return pwd;
	}
	public void setPwd(String pwd) {
		this.pwd = pwd;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public int getOut() {
		return out;
	}
	public void setOut(int out) {
		this.out = out;
	}
	public String getPicture() {
		return picture;
	}
	public void setPicture(String picture) {
		this.picture = picture;
	}
	public int getAdmin() {
		return admin;
	}
	public void setAdmin(int admin) {
		this.admin = admin;
	}	
	
}
