package com.hotel.dao;

import java.util.List;

public interface BaseDao {

	public <T> boolean saveObject(T obj);

	public <T> boolean delObject(T obj);

	public <T> T selectObject(T obj);

	public <T> boolean updateObject(T obj);

	public List<?> updateObjectByIds(String[] ids);
}
