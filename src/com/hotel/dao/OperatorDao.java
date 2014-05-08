package com.hotel.dao;

public interface OperatorDao extends BaseDao {

	boolean delOperatorByIds(String[] ids);

	public boolean updateOptDelMarkByIds(String[] ids);

}
