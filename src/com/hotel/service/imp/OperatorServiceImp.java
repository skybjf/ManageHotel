package com.hotel.service.imp;

import java.util.List;

import com.hotel.dao.OperatorDao;
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

	public boolean addOperator(Operator operator) {
		operator.setPwd(MD5.encryption(operator.getPwd()));
		return operatorDao.saveObject(operator);
	}

	public Operator selectOperatorById(Operator operator) {
		operator.setPwd(MD5.encryption(operator.getPwd()));
		return operatorDao.selectObject(operator);
	}

	public boolean updateOperator(Operator operator) {
		return false;
	}

	public List<Operator> listOperator(Operator operator) {
		return null;
	}

	public boolean delOperatorByIds(String[] ids) {
		return false;
	}

	public boolean updateOperatorIds(String[] ids) {
		operatorDao.updateOperatorByIds(ids);
		return false;
	}
}
