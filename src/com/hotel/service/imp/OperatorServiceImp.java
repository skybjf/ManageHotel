package com.hotel.service.imp;

import com.hotel.base.PageObject;
import com.hotel.dao.OperatorDao;
import com.hotel.enums.TablesEnum;
import com.hotel.model.Operator;
import com.hotel.service.OperatorService;
import com.hotel.util.MD5;

public class OperatorServiceImp implements OperatorService {

	private OperatorDao operatorDao;

	public OperatorDao getOperatorDao() {
		return operatorDao;
	}

	public void setOperatorDao(OperatorDao operatorDao) {
		this.operatorDao = operatorDao;
	}

	// 如果增加管理员需要上传图片，则图片的上传工作在此处处理
	public boolean addOperator(Operator operator) {
		operator.setPwd(MD5.encryption(operator.getPwd()));
		return operatorDao.saveObject(operator);
	}

	public Operator selectOperator(Operator operator) {
		if (operator.getPwd() != null) {
			operator.setPwd(MD5.encryption(operator.getPwd()));
			return null;
		}
		return operatorDao.selectObject(operator);
	}

	public boolean updateOperator(Operator operator) {
		return false;
	}

	public PageObject listOperator(PageObject operator, String name, String id) {
		StringBuilder sb = new StringBuilder("from ");
		sb.append(TablesEnum.OPERATOR.getTableName()).append(" where 1=1");
		if (name != null && !name.equals("")) {
			sb.append(" and userName like '%").append(name).append("%'");
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

}
