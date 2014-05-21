package com.hotel.service.imp;

import com.hotel.base.PageObject;
import com.hotel.dao.NewsDao;
import com.hotel.enums.TablesEnum;
import com.hotel.model.News;
import com.hotel.service.NewsService;
import com.hotel.service.PageObjectService;

public class NewsServiceImp implements NewsService {

	private NewsDao newsDao;
	private PageObjectService pageService;

	public boolean addNews(News news) {
		return this.newsDao.saveObject(news);
	}

	public boolean updateNews(News news) {
		return this.newsDao.updateObject(news);
	}

	public boolean delNews(News news) {
		return this.newsDao.updateObject(news);
	}

	public PageObject selectNews(int page, int pageSize) {
		String hql = "from " + TablesEnum.NEWS.getTableName();
		return pageService.queryForPage(hql, pageSize, page);
	}

	public NewsDao getNewsDao() {
		return newsDao;
	}

	public void setNewsDao(NewsDao newsDao) {
		this.newsDao = newsDao;
	}

	public PageObjectService getPageService() {
		return pageService;
	}

	public void setPageService(PageObjectService pageService) {
		this.pageService = pageService;
	}

}
