package com.hotel.model;

public class Operator {

	private int id;// 自增ID
	private String userName;// 用户名
	private String pwd;// 用户密码
	private String gender;// 性别
	private String mail;// 用户邮箱用于找回密码
	private String url;// 用户邮箱用于找回密码
	private String userType;// 用户类型
	private String loginTime; // 上次登录时间
	private String delMark;// 删除标记

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

	public String getMail() {
		return mail;
	}

	public void setMail(String mail) {
		this.mail = mail;
	}

	public String getDelMark() {
		return delMark;
	}

	public void setDelMark(String delMark) {
		this.delMark = delMark;
	}

	public String getLoginTime() {
		return loginTime;
	}

	public void setLoginTime(String loginTime) {
		this.loginTime = loginTime;
	}

	public String toString() {
		return "from Operator where userName ='" + userName + "'and pwd='" + pwd + "'";
	}

	public String toLogString() {
		return "Operator [id=" + id + ", userName=" + userName + ", pwd=" + pwd + ", gender=" + gender + ", mail=" + mail + ", userType=" + userType + "]";
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public String getUrl() {
		return url;
	}

	public void setUrl(String url) {
		this.url = url;
	}
}
