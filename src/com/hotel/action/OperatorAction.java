package com.hotel.action;

import com.hotel.base.PageObject;
import com.hotel.model.Operator;
import com.hotel.service.OperatorService;
import com.hotel.util.HotelUtils;
import com.opensymphony.xwork2.ActionSupport;
import common.Logger;

public class OperatorAction extends ActionSupport {

	private static final Logger log = Logger.getLogger(OperatorAction.class);
	private static final long serialVersionUID = -5365916222957141079L;
	// 管理員
	private Operator operator;

	private PageObject pageOperator;
	// 用作用户的相关操作
	private OperatorService operatorService;

	// 登录
	public String login() {
		System.out.println("login");
		if (operator.getUserName().equals("") || operator.getUserName() == null || operator.getPwd().equals("") || operator.getPwd() == null) {
			return "loginError";
		} else {
			operator = operatorService.selectOperator(operator);
			if (operator != null) {
				log.info(operator.getUserName() + " login  sessucess" + HotelUtils.getCurrentTime());
				return "loginSuccess";
			}
		}
		log.info(operator.getUserName() + " login  ERROR" + HotelUtils.getCurrentTime());
		return "loginError";
	}

	// 添加用户
	public String addOperator() {
		if (operator.getUserName().equals("") || operator.getUserName() == null || operator.getPwd().equals("") || operator.getPwd() == null) {
			return "addError";
		}
		boolean flag = operatorService.addOperator(operator);
		if (flag) {
			log.info(HotelUtils.getCurrentTime() + "add " + operator.toLogString() + " SUCCESS");
			return "addSuccess";
		} else {
			log.info(HotelUtils.getCurrentTime() + "add " + operator.toLogString() + " ERROR");
			return "addError";
		}
	}

	// 模糊查看用户
	public String listOperator() {

		this.pageOperator = operatorService.listOperator(pageOperator, "", "");
		System.out.println(pageOperator.getList().size());
		return "list";
	}

	// 通过ID 查询operator 修改之前的查询
	public String selectOperatorById() {
		System.out.println("删除用户：" + operator.getId());
		this.operator = operatorService.selectOperator(operator);
		return "showOperator";
	}

	// 更新用户
	public String update() {
		boolean flag = operatorService.updateOperator(operator);
		if (flag) {
			this.pageOperator = operatorService.listOperator(pageOperator, "", "");
			return "updateSuccess";
		}
		return "updateError";
	}

	// 删除用户
	public String delOperator() {
		System.out.println("删除用户：" + operator.getId());

		return "";
	}

	public Operator getOperator() {
		return operator;
	}

	public void setOperator(Operator operator) {
		this.operator = operator;
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
