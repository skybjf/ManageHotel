package com.hotel.action;

import java.io.File;

import org.apache.struts2.ServletActionContext;

import com.hotel.base.PageObject;
import com.hotel.model.Operator;
import com.hotel.service.OperatorService;
import com.hotel.util.ActionUtil;
import com.hotel.util.HotelConfig;
import com.hotel.util.HotelUtils;
import com.hotel.util.MD5Util;
import com.hotel.util.PrintWriterUtil;
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

	private String oldPwd;
	// 用户修改个人信息 用于密码确认
	private String newPwd;

	private String newPwdSure;

	private String queryName;

	private Integer page;

	private Integer pageSize;

	// 登录
	public String login() {
		System.out.println(operator.toLogString());
		if (operator.getUserName().equals("") || operator.getUserName() == null || operator.getPwd().equals("") || operator.getPwd() == null) {
			PrintWriterUtil.getPrintWriter().write("fail");
			return null;
		} else {
			Operator login;
			login = operatorService.login(operator);
			System.out.println(operator);
			if (login != null) {
				log.info(login.getUserName() + " login  sessucess " + HotelUtils.getCurrentTime());
				// 将用户信息放入session中 ,用于判断是否登录, 跟权限信息
				ActionUtil.getSession().put("operatorId", login.getId());
				ActionUtil.getSession().put("userName", login.getUserName());
				ActionUtil.getSession().put("gender", login.getGender());
				ActionUtil.getSession().put("image", login.getUrl());
				ActionUtil.getSession().put("userMail", login.getMail());
				ActionUtil.getSession().put("loginTime", login.getLoginTime());
				ActionUtil.getSession().put("userType", login.getUserType());
				login.setLoginTime(HotelUtils.getCurrentTime());
				operatorService.updateOperator(login);
				PrintWriterUtil.getPrintWriter().write("success");
				return null;
			} else {
				log.info(operator.getUserName() + " login  ERROR " + HotelUtils.getCurrentTime());
				PrintWriterUtil.getPrintWriter().write("fail");
				return null;
			}
		}
	}

	public String beforModifyPwd() {
		System.out.println("ssss");
		if (operator.getUserName().equals("") || operator.getUserName() == null || operator.getPwd().equals("") || operator.getPwd() == null) {
			PrintWriterUtil.getPrintWriter().write("fail");
			return null;
		} else {
			Operator login;
			login = operatorService.login(operator);
			if (login != null) {
				PrintWriterUtil.getPrintWriter().write("success");
				return null;
			} else {
				PrintWriterUtil.getPrintWriter().write("fail");
				return null;
			}
		}
	}

	public String logout() {
		ActionContext.getContext().getSession().clear();
		return "logout";
	}

	public String beforAddOperator() {
		boolean flag = operatorService.selectOparatorByName(operator.getUserName());
		if (flag) {
			PrintWriterUtil.getPrintWriter().write("success");
			return null;
		}
		PrintWriterUtil.getPrintWriter().write("fail");
		return null;
	}

	// 添加用户
	public String addOperator() {
		if (operator.getUserName().equals("") || operator.getUserName() == null || operator.getPwd().equals("") || operator.getPwd() == null) {
			PrintWriterUtil.getPrintWriter().write("fail");
			return null;
		}
		System.out.println(operator.getUrl());
		boolean flag = operatorService.selectOparatorByName(operator.getUserName());
		if (flag) {
			operatorService.addOperator(operator);
			PrintWriterUtil.getPrintWriter().write("success");
		}
		PrintWriterUtil.getPrintWriter().write("fail");
		return null;
	}

	// 模糊查看用户
	public String listOperator() {
		if (page == null || page == 0) {
			page = 1;
		}
		this.pageOperator = operatorService.listOperator(page, 10, queryName);
		System.out.println(HotelUtils.toJson(pageOperator).toString());
		// PrintWriterUtil.getPrintWriter().write(HotelUtils.toJson(pageOperator).toString());
		PrintWriterUtil.getJsonPrintWriter().write(HotelUtils.toJson(pageOperator).toString());

		return null;
	}

	// 通过ID 查询operator 修改之前的查询
	public String selectOperatorById() {
		System.out.println("删除用户：" + operator.getId());
		this.operator = operatorService.selectOperator(operator);
		return "showOperator";
	}

	// 更新用户
	public String updateOperator() {
		operator.setId(Integer.valueOf(ActionUtil.getSession().get("operatorId").toString()));
		if (newPwd.equals(newPwdSure)) {
			operator.setPwd(MD5Util.encryption(newPwd));
			operator.setLoginTime(HotelUtils.getCurrentTime());
			operator.setDelMark("0");
			if (operator.getUrl() != "" && operator.getUrl() != null) {
				ActionUtil.getSession().put("image", operator.getUrl());
				boolean flag = operatorService.updateOperator(operator);
				if (flag) {
					PrintWriterUtil.getPrintWriter().write("success");
					return null;
				}
				PrintWriterUtil.getPrintWriter().write("fail");
				return null;
			}
		}
		PrintWriterUtil.getPrintWriter().write("pwd");
		return null;
	}

	public String uploadOperatiorImage() {
		String basePath = ServletActionContext.getServletContext().getRealPath(HotelConfig.getValue("operator.image.path"));
		System.out.println(basePath);
		System.out.println(imageFileName);
		System.out.println(image.length());
		String src = operatorService.uploadOperatorImage(image, imageFileName, basePath);
		if (src != "") {
			PrintWriterUtil.getPrintWriter().write(src);
		}
		return null;
	}

	// 删除用户
	public String delOperator() {
		System.out.println("删除用户：" + operator.getId());
		String ids[] = new String[1];
		ids[0] = operator.getId() + "";
		boolean flag = operatorService.delOperatorByIds(ids);
		if (flag) {
			this.pageOperator = operatorService.listOperator(1, 10, queryName);
			System.out.println(HotelUtils.toJson(pageOperator).toString());
			// PrintWriterUtil.getPrintWriter().write(HotelUtils.toJson(pageOperator).toString());
			PrintWriterUtil.getJsonPrintWriter().write(HotelUtils.toJson(pageOperator).toString());
			return null;

		} else {

			return null;
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

	public String getOldPwd() {
		return oldPwd;
	}

	public void setOldPwd(String oldPwd) {
		this.oldPwd = oldPwd;
	}

	public String getQueryName() {
		return queryName;
	}

	public void setQueryName(String queryName) {
		this.queryName = queryName;
	}

	public Integer getPage() {
		return page;
	}

	public void setPage(Integer page) {
		this.page = page;
	}

	public Integer getPageSize() {
		return pageSize;
	}

	public void setPageSize(Integer pageSize) {
		this.pageSize = pageSize;
	}

}
