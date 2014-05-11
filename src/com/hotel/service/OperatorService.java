package com.hotel.service;

import com.hotel.base.PageObject;
import com.hotel.model.Operator;

public interface OperatorService {
	boolean addOperator(Operator operator);

	// 该方法用于假删除以防止用户误操作
	boolean updateOptDelMarkByIds(String[] ids);

	Operator selectOperator(Operator operator);

	boolean updateOperator(Operator operator);

	PageObject listOperator(PageObject operator, String name, String id);

	// 该方法用于删除，不论是批量删除还是单个删除
	boolean delOperatorByIds(String[] ids);

}