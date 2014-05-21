package com.hotel.service;

import com.hotel.base.PageObject;
import com.hotel.model.News;

public interface NewsService {
	boolean addNews(News news);

	boolean updateNews(News news);

	boolean delNews(News news);

	PageObject selectNews(int page, int pageSize);
}
