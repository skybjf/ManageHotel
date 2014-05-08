package com.hotel.service;

import java.util.List;

import com.hotel.model.Operator;

public interface OperatorService {
	boolean addOperator(Operator operator);

	//该方法用于假删除以防止用户误操作
	boolean updateOptDelMarkByIds(String[] ids);

	Operator selectOperatorById(Operator operator);

	boolean updateOperator(Operator operator);

	List<Operator> listOperator(Operator operator);

	//该方法用于删除，不论是批量删除还是单个删除
	boolean delOperatorByIds(String[] ids);
}