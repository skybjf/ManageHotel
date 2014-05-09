package com.hotel.dao.imp;

import java.util.List;

import org.apache.log4j.Logger;
import org.hibernate.Query;
import org.hibernate.Session;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import com.hotel.base.PageObject;
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

	// 该方法是用于删除或修改之前的准备工作
	public List<?> selectObjectByIds(String sql) {
		List<?> list = this.getHibernateTemplate().find(sql);
		return list;
	}

	public PageObject listObject(String hql, PageObject page) {
		Session session = this.getSession();
		Query query = session.createQuery(hql);
		// 请求分页数据

		if (page.getNowPage() == null) {
			page.setNowPage(1);
		}
		query.setFirstResult((page.getNowPage() - 1) * page.getPageSize());
		query.setMaxResults(page.getPageSize());
		List<?> list = query.list();
		if (page.getRowCount() == null || page.getRowCount() == 0) {
			this.initObject(hql);
		}
		page.setList(list);
		return page;
	}

	public PageObject initObject(String hql) {
		PageObject page = new PageObject();
		Session session = this.getSession();
		Query query = session.createQuery(hql);
		List<?> list = query.list();
		page.setRowCount(list.size());
		int pageCount = list.size() / page.getPageSize();
		if (list.size() % page.getPageSize() == 0) {
			pageCount += 0;
		} else {
			pageCount += 1;

		}
		page.setLastPage(pageCount);
		page.setList(list);
		return page;
	}
}
