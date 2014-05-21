package com.hotel.service;

import com.hotel.base.PageObject;




public interface PageObjectService {
	 /**
     * 分页查询
     * @param page 当前第几页
     * @param pageSize 每页大小
     * @return 封闭了分页信息(包括记录集list)的Bean
     */
	public PageObject queryForPage(String hql, int pageSize, int page);
}
