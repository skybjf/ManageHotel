package com.hotel.action;

import com.hotel.dao.OperatorDao;
import com.hotel.model.Operator;
import com.opensymphony.xwork2.ActionSupport;

public class OperatorAction extends ActionSupport {

	private static final long serialVersionUID = -5365916222957141079L;
	// 管理員
	private Operator operator;
	//
	private String verify;
	//
	private int state;
	// 返回值
	private Boolean flag = false;
	// 验证码
	private String verifyCode;
	// 用作用户的相关操作
	private OperatorDao operatorDao;

	// 校验登录
	public String login() {
		boolean res = operatorDao.selectObject(operator);
		System.out.println(operator.toString());
		System.out.println("res"+res);
		if (res) {
			return "login";
		}

		return "error";
	}

	// 注册
	public boolean register() {
		return false;
	}

	// 更新
	public boolean update() {
		return false;
	}

	// 删除Operator.假删除
	public boolean chengeDelMark() {
		return false;
	}

	// 删除Operator
	public boolean delOperator() {
		return false;
	}

	public Operator getOperator() {
		return operator;
	}

	public void setOperator(Operator operator) {
		this.operator = operator;
	}

	public String getVerify() {
		return verify;
	}

	public void setVerify(String verify) {
		this.verify = verify;
	}

	public int getState() {
		return state;
	}

	public void setState(int state) {
		this.state = state;
	}

	public Boolean getFlag() {
		return flag;
	}

	public void setFlag(Boolean flag) {
		this.flag = flag;
	}

	public String getVerifyCode() {
		return verifyCode;
	}

	public void setVerifyCode(String verifyCode) {
		this.verifyCode = verifyCode;
	}

	public OperatorDao getOperatorDao() {
		return operatorDao;
	}

	public void setOperatorDao(OperatorDao operatorDao) {
		this.operatorDao = operatorDao;
	}

}
