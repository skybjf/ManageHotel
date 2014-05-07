package com.hotel.dao;

public interface OperatorDao extends BaseDao {

	boolean updateOperatorByIds(String[] ids);

	boolean delOperatorByIds(String[] ids);

}
