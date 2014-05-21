package com.hotel.dao;

import java.util.List;

public interface PageObjectDao {
	/**
     * 分页查询
     * @param hql 查询的条件
     * @param offset 开始记录
     * @param length 一次查询几条记录
     * @return 查询到符合条件的结果集
     */
	public List<?> queryForPage(final String hql, final int offset,
			final int length);

	 /**
     * 查询所有记录数
     * @param hql 查询的条件
     * @return 总记录数
     */
	public int getAllRowCount(String hql);

}
