package com.hotel.service.imp;

import java.util.List;

import com.hotel.dao.RoomTypeDao;
import com.hotel.enums.TablesEnum;
import com.hotel.model.RoomType;
import com.hotel.service.RoomTypeService;

public class RoomTypeServiceImp implements RoomTypeService {

	private RoomTypeDao roomTypeDao;

	public boolean addRoomType(RoomType roomType) {
		return this.roomTypeDao.saveObject(roomType);
	}

	public boolean updateRoomType(RoomType roomType) {
		return this.roomTypeDao.updateObject(roomType);
	}

	public List<RoomType> selectRoomType() {
		String hql = "from " + TablesEnum.ROOMTYPE.getTableName();
		return this.roomTypeDao.selectRoomType(hql);
	}

	public RoomTypeDao getRoomTypeDao() {
		return roomTypeDao;
	}

	public void setRoomTypeDao(RoomTypeDao roomTypeDao) {
		this.roomTypeDao = roomTypeDao;
	}

}
