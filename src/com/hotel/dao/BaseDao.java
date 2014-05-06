package com.hotel.dao;

public interface BaseDao {

	public boolean saveObject(Object obj);

	public boolean delObject(Object obj);

	public boolean selectObject(Object obj);

	public boolean updateObject(Object obj);
}
