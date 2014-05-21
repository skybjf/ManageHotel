package com.hotel.service;

import java.util.List;

import com.hotel.model.RoomType;

public interface RoomTypeService {
	boolean addRoomType(RoomType roomType);

	boolean updateRoomType(RoomType roomType);

	List<RoomType> selectRoomType();
}
