package com.hotel.dao.imp;

import java.util.List;

import org.apache.log4j.Logger;

import com.hotel.dao.RoomInfoDao;
import com.hotel.model.RoomInfo;

public class RoomInfoDaoImp extends BaseDaoImp implements RoomInfoDao {
	private static final Logger log = Logger.getLogger(OperatorDaoImp.class);

	public Boolean saveRoom(RoomInfo obj) {
		try {
			this.getHibernateTemplate().save(obj);
		} catch (Exception e) {
			log.error("save Operator error [Operator]" + obj.toString(), e);
			return false;
		}
		return true;
	}

	public Boolean delRoom(RoomInfo obj) {
		try {
			this.getHibernateTemplate().delete(obj);
		} catch (Exception e) {
			log.error("del Operator error [Operator]" + obj.toString(), e);
			return false;
		}
		return true;
	}

	public Boolean alterRoomInfo(RoomInfo obj) {
		try {
			this.getHibernateTemplate().update(obj);
		} catch (Exception e) {
			log.error("update Operator error [Operator]" + obj.toString(), e);
			return false;
		}
		return true;
	}

	public Boolean selectRoom(RoomInfo obj) {
		 List <?>list;
			try {
				list= this.getHibernateTemplate().find(obj+"and delmark='0'");
				System.out.println(list.size());
			} catch (Exception e) {
				log.error("login Operator error " + obj.toString(), e);
				return false;
			}
			if(list.size()>=1){
				return true;
			}
			return false;
	}

}
