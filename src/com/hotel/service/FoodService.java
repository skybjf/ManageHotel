package com.hotel.service;

import java.io.File;

import com.hotel.base.PageObject;
import com.hotel.model.Food;

public interface FoodService {
	boolean addFood(Food food, File file, String filePth, String fileName);

	// 该方法用于假删除以防止用户误操作
	boolean updateFoodDelMarkByIds(String[] ids);

	boolean updateFood(Food food);

	PageObject listFood(PageObject food, String season, String name, String id);

	// 该方法用于删除，不论是批量删除还是单个删除
	boolean delFoodByIds(String[] ids);

	Food selectFood(Food food);

	Food selectFoodByName(String foodName);

}