package com.hotel.dao;

import java.util.List;

import com.hotel.model.RoomType;

public interface RoomTypeDao extends BaseDao {
	List<RoomType> selectRoomType (String hql);
}
