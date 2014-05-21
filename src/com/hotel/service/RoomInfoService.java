package com.hotel.service;

import com.hotel.base.PageObject;
import com.hotel.model.RoomInfo;

public interface RoomInfoService {
	boolean addRoomInfo(RoomInfo roomInfo);

	boolean updateRoomInfo(RoomInfo roomInfo);

	PageObject selectRoomInfo(int pageSize, int page);
}
