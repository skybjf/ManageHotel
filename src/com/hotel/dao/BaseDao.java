package com.hotel.dao;


public interface BaseDao {

	public <T> boolean saveObject(T obj);

	public <T> boolean delObject(T obj);

	public <T> T selectObject(T obj);

	public <T> boolean updateObject(T obj);

}
