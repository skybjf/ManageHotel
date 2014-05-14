package com.hotel.dao;

import com.hotel.base.PageObject;
import com.hotel.model.Operator;

public interface OperatorDao extends BaseDao {

	boolean delOperatorByIds(String[] ids);

	public boolean updateOptDelMarkByIds(String[] ids);

	public PageObject listOperator(String hql, PageObject operator);

	public Operator login(Operator opeator);

}
