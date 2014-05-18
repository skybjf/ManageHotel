package com.hotel.action;

import java.io.File;

import org.apache.struts2.ServletActionContext;

import com.hotel.base.PageObject;
import com.hotel.model.Operator;
import com.hotel.service.OperatorService;
import com.hotel.util.HotelConfig;
import com.hotel.util.HotelUtils;
import com.opensymphony.xwork2.ActionContext;
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

	private File image;
	private String imageFileName;
	// 用户修改个人信息 用于密码确认
	private String newPwd;

	private String newPwdSure;

	// 登录
	public String login() {
		System.out.println("login");
		if (operator.getUserName().equals("") || operator.getUserName() == null || operator.getPwd().equals("") || operator.getPwd() == null) {
			return "loginError";
		} else {
			operator = operatorService.login(operator);
			if (operator != null) {
				log.info(operator.getUserName() + " login  sessucess" + HotelUtils.getCurrentTime());
				// 将用户信息放入session中 ,用于判断是否登录, 跟权限信息
				ActionContext.getContext().getSession().put("operatorId", operator.getId());
				ActionContext.getContext().getSession().put("userName", operator.getUserName());
				ActionContext.getContext().getSession().put("userMail", operator.getMail());
				ActionContext.getContext().getSession().put("loginTime", operator.getLoginTime());
				ActionContext.getContext().getSession().put("userType", operator.getUserType());
				operator.setLoginTime(HotelUtils.getCurrentTime());
				operatorService.updateOperator(operator);
				return "loginSuccess";
			}
		}
		log.info(operator.getUserName() + " login  ERROR" + HotelUtils.getCurrentTime());
		return "loginError";
	}

	public String logout() {
		ActionContext.getContext().getSession().clear();
		return "logout";
	}

	// 添加用户
	public String addOperator() {
		String basePath = ServletActionContext.getServletContext().getRealPath(HotelConfig.getValue("operator.image.path"));
		System.out.println(basePath);
		if (operator.getUserName().equals("") || operator.getUserName() == null || operator.getPwd().equals("") || operator.getPwd() == null) {
			return "addError";
		}
		boolean flag = operatorService.addOperator(operator, basePath, image, imageFileName);
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
	public String updateOperator() {

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
		String ids[] = new String[1];
		ids[0] = operator.getId() + "";
		boolean flag = operatorService.delOperatorByIds(ids);
		if (flag) {
			return "updateSuccess";

		} else {

			return "updateError";
		}
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

	public File getImage() {
		return image;
	}

	public void setImage(File image) {
		this.image = image;
	}

	public String getImageFileName() {
		return imageFileName;
	}

	public void setImageFileName(String imageFileName) {
		this.imageFileName = imageFileName;
	}

	public String getNewPwd() {
		return newPwd;
	}

	public void setNewPwd(String newPwd) {
		this.newPwd = newPwd;
	}

	public String getNewPwdSure() {
		return newPwdSure;
	}

	public void setNewPwdSure(String newPwdSure) {
		this.newPwdSure = newPwdSure;
	}
}
