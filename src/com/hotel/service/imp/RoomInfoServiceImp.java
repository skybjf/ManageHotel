package com.hotel.service.imp;

import com.hotel.base.PageObject;
import com.hotel.dao.RoomInfoDao;
import com.hotel.enums.TablesEnum;
import com.hotel.model.RoomInfo;
import com.hotel.service.PageObjectService;
import com.hotel.service.RoomInfoService;

public class RoomInfoServiceImp implements RoomInfoService {

	private RoomInfoDao roomInfoDao;
	private PageObjectService pageService;

	public RoomInfoDao getRoomInfoDao() {
		return roomInfoDao;
	}

	public void setRoomInfoDao(RoomInfoDao roomInfoDao) {
		this.roomInfoDao = roomInfoDao;
	}

	public PageObjectService getPageService() {
		return pageService;
	}

	public void setPageService(PageObjectService pageService) {
		this.pageService = pageService;
	}

	public boolean addRoomInfo(RoomInfo roomInfo) {
		return this.roomInfoDao.saveObject(roomInfo);
	}

	public boolean updateRoomInfo(RoomInfo roomInfo) {
		return this.roomInfoDao.updateObject(roomInfo);
	}

	public PageObject selectRoomInfo(int pageSize, int page) {
		String hql = "from " + TablesEnum.ROONINFO.getTableName();
		return this.pageService.queryForPage(hql, pageSize, page);
	}

}
