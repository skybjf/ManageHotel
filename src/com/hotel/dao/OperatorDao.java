package com.hotel.dao;

import com.hotel.model.Operator;

public interface OperatorDao extends BaseDao {

	boolean delOperatorByIds(String[] ids);

	public boolean updateOptDelMarkByIds(String[] ids);

	public Operator login(Operator opeator);

	public boolean selectOperatorByName(String hql);

}
