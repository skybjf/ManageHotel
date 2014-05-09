package com.hotel.action;

import com.hotel.base.PageObject;
import com.hotel.model.Operator;
import com.hotel.service.OperatorService;
import com.opensymphony.xwork2.ActionSupport;

public class OperatorAction extends ActionSupport {

	private static final long serialVersionUID = -5365916222957141079L;
	// 管理員
	private Operator operator;

	private PageObject pageOperator;
	//
	private String verify;
	//
	private int state;
	// 返回值
	private Boolean flag = false;
	// 验证码
	private String verifyCode;
	// 用作用户的相关操作
	private OperatorService operatorService;

	// 校验登录
	public String login() {
		operator = operatorService.selectOperator(operator);
		if (operator != null) {
			System.out.println("login sessucess");
			return "loginSuccess";
		}
		return "loginError";
	}

	// 注册
	public String addOperator() {
		boolean flag = operatorService.addOperator(operator);
		if (flag) {
			return "addSuccess";
		} else {
			return "addError";
		}
	}

	public String listOperator() {

		this.pageOperator = operatorService.listOperator(new PageObject(), "", "");
		System.out.println(pageOperator.getList().size());
		return "list";
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

	public OperatorService getOperatorService() {
		return operatorService;
	}

	public void setOperatorService(OperatorService operatorService) {
		this.operatorService = operatorService;
	}

	public PageObject getPageOperator() {
		return pageOperator;
	}

	public void setPageOperator(PageObject pageOperator) {
		this.pageOperator = pageOperator;
	}

}
