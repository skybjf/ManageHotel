package com.hotel.service.imp;

import java.util.List;

import com.hotel.base.PageObject;
import com.hotel.dao.PageObjectDao;
import com.hotel.service.PageObjectService;

public class PageObjectServiceImp implements PageObjectService {
	// 注入paginationDaoֵ
	private PageObjectDao pageDao;

	/**
	 * 分页查询
	 * 
	 * @param page当前第几页
	 * @param pageSize
	 *            每页大小
	 * @return 封闭了分页信息(包括记录集list)的Bean
	 */
	public PageObject queryForPage(String hql, int pageSize, int page) {
		int allRow = pageDao.getAllRowCount(hql); // 总记录数
		int totalPage = PageObject.countTotalPage(pageSize, allRow); // 总页数
		if (totalPage < page)
			page = totalPage;
		final int offset = PageObject.countOffset(pageSize, page); // 当前页开始记录
		final int length = pageSize; // 每页记录数
		final int currentPage = PageObject.countCurrentPage(page);
		List<?> list = pageDao.queryForPage(hql, offset, length); // 一页的记录数

		// 把分页信息保存到bean中
		PageObject pageObject = new PageObject();
		pageObject.setPageSize(pageSize);
		pageObject.setCurrentPage(currentPage);
		pageObject.setAllRow(allRow);
		pageObject.setTotalPage(totalPage);
		pageObject.setList(list);
		pageObject.init();
		System.out.println("return");
		return pageObject;
	}

	public PageObjectDao getPageDao() {
		return pageDao;
	}

	public void setPageDao(PageObjectDao pageDao) {
		this.pageDao = pageDao;
	}

}
