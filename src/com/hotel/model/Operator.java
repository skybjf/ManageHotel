package com.hotel.model;

public class Operator {

	private int id;// 自增ID
	private String userName;// 用户名
	private String pwd;// 用户密码
	private String mail;// 用户邮箱用于找回密码
	private String userType;// 用户类型
	private String delmark;// 删除标记

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public String getPwd() {
		return pwd;
	}

	public void setPwd(String pwd) {
		this.pwd = pwd;
	}

	public String getUserType() {
		return userType;
	}

	public void setUserType(String userType) {
		this.userType = userType;
	}

	public String getDelmark() {
		return delmark;
	}

	public void setDelmark(String delmark) {
		this.delmark = delmark;
	}

	public String getMail() {
		return mail;
	}

	public void setMail(String mail) {
		this.mail = mail;
	}

	@Override
	public String toString() {
		return "from Operator where userName ='" + userName + "'and pwd='" + pwd+"'";
	}
}
