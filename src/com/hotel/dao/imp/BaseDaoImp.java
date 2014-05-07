package com.hotel.dao.imp;

import java.util.List;

import org.apache.log4j.Logger;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import com.hotel.dao.BaseDao;

public class BaseDaoImp extends HibernateDaoSupport implements BaseDao {
	private static final Logger log = Logger.getLogger(BaseDaoImp.class);

	public <T> boolean saveObject(T obj) {
		try {
			this.getHibernateTemplate().save(obj);
		} catch (Exception e) {
			log.error("save Operator error [Operator]" + obj.toString(), e);
			return false;
		}
		return true;
	}

	public <T> boolean delObject(T obj) {
		try {
			this.getHibernateTemplate().delete(obj);
		} catch (Exception e) {
			log.error("del Operator error [Operator]" + obj.toString(), e);
			return false;
		}
		return true;
	}

	@SuppressWarnings("unchecked")
	public <T> T selectObject(T obj) {
		List<?> list;
		try {
			System.out.println(obj.toString());
			String sql = obj.toString() + "and delmark='0'";
			list = this.getHibernateTemplate().find(sql);
			log.debug(sql);
		} catch (Exception e) {
			log.error("login Operator error " + obj.toString(), e);
			return null;
		}
		if (list.size() >= 1) {
			return (T) list.get(0);
		}
		return null;
	}

	public <T> boolean updateObject(T obj) {
		try {
			this.getHibernateTemplate().update(obj);
		} catch (Exception e) {
			log.error("update Operator error [Operator]" + obj.toString(), e);
			return false;
		}
		return true;
	}

	public  List updateObjectByIds(String[] ids) {
		List list = this.getHibernateTemplate().find(" from Operator where id in ('12','13')");
		return list;
	}
}
