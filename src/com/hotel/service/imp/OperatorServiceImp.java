package com.hotel.service.imp;

import java.io.File;

import com.hotel.base.PageObject;
import com.hotel.dao.OperatorDao;
import com.hotel.enums.TablesEnum;
import com.hotel.model.Operator;
import com.hotel.service.OperatorService;
import com.hotel.util.HotelUtils;
import com.hotel.util.MD5Util;

public class OperatorServiceImp implements OperatorService {

	private OperatorDao operatorDao;

	public OperatorDao getOperatorDao() {
		return operatorDao;
	}

	public void setOperatorDao(OperatorDao operatorDao) {
		this.operatorDao = operatorDao;
	}

	// 如果增加管理员需要上传图片，则图片的上传工作在此处处理
	public boolean addOperator(Operator operator, String basePath, File optImg, String optImgFileName) {
		operator.setPwd(MD5Util.encryption(operator.getPwd()));
		System.err.println(operator.toLogString());

		if (optImg == null || optImg.length() <= 0) {
			operator.setUrl("\\img\\admin\\head.jpg");
		} else {
			String url = HotelUtils.upLoadFile(optImg, optImgFileName, basePath);
			if (url == null || url.equals("")) {
				operator.setUrl("\\img\\admin\\head.jpg");
			} else {
				operator.setUrl(url);
			}
		}
		operator.setLoginTime("0000-00-00 00:00:00");
		operator.setDelMark("0");
		return operatorDao.saveObject(operator);
	}

	public Operator login(Operator operator) {
		if (operator.getPwd() != null) {
			operator.setPwd(MD5Util.encryption(operator.getPwd()));
			return operatorDao.selectObject(operator);
		} else {
			return null;
		}
	}

	public boolean updateOperator(Operator operator) {
		String sql = "from " + TablesEnum.OPERATOR.getTableName() + " where id = '" + operator.getId() + "'";
		this.operatorDao.selectObjectByIds(sql);
		return this.operatorDao.updateObject(operator);
	}

	public PageObject listOperator(PageObject operator, String name, String id) {
		StringBuilder sb = new StringBuilder("from ");
		sb.append(TablesEnum.OPERATOR.getTableName()).append(" where 1=1 ");
		if (name != null && !name.equals("")) {
			sb.append(" and userName like '%").append(name).append("%' ");
		}

		if (id != null && !id.equals("")) {
			sb.append(" and id like '%").append(id).append("%'");
		}
		return operatorDao.listOperator(sb.toString(), operator);
	}

	public boolean delOperatorByIds(String[] ids) {
		return operatorDao.delOperatorByIds(ids);
	}

	public boolean updateOptDelMarkByIds(String[] ids) {
		return operatorDao.updateOptDelMarkByIds(ids);
	}

	// 单个查询
	public Operator selectOperator(Operator operator) {
		return operatorDao.selectObject(operator);
	}

}
