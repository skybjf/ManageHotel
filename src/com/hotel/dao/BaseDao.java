package com.hotel.dao;

import java.util.List;

public interface BaseDao {

	public <T> boolean saveObject(T obj);

	public <T> boolean delObject(T obj);

	public <T> T selectObject(T obj);

	public <T> boolean updateObject(T obj);

	//该方法用于依据sql语句进行查询的
	public List<?> selectObjectByIds(String sql );
}
