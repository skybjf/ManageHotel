package com.hotel.dao.imp;

import org.apache.log4j.Logger;

import com.hotel.dao.OperatorDao;

public class OperatorDaoImp extends BaseDaoImp implements OperatorDao {
	private static final Logger log = Logger.getLogger(OperatorDaoImp.class);

	public boolean updateOperatorBy(String[] ids) {
		this.updateOperatorByIds(ids);
		return false;
	}

	public boolean delOperatorByIds(String[] ids) {
		// TODO Auto-generated method stub
		return false;
	}

	public boolean updateOperatorByIds(String[] ids) {
		// TODO Auto-generated method stub
		return false;
	}

}
