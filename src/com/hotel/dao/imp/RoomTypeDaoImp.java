package com.hotel.dao.imp;

import java.util.List;

import org.apache.log4j.Logger;

import com.hotel.dao.RoomTypeDao;
import com.hotel.model.RoomType;


public class RoomTypeDaoImp  extends BaseDaoImp implements RoomTypeDao{

	private static final Logger log = Logger.getLogger(RoomTypeDaoImp.class);

	@SuppressWarnings("unchecked")
	public List<RoomType> selectRoomType(String hql) {
		return this.getHibernateTemplate().find(hql);
	}
	

}
