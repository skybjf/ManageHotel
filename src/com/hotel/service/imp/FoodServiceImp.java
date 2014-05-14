package com.hotel.service.imp;

import java.io.File;

import com.hotel.base.PageObject;
import com.hotel.dao.FoodDao;
import com.hotel.model.Food;
import com.hotel.service.FoodService;
import com.hotel.util.HotelUtils;

public class FoodServiceImp implements FoodService {

	private FoodDao foodDao;

	public boolean updateFoodDelMarkByIds(String[] ids) {
		return false;
	}

	public boolean updateFood(Food food) {
		return this.foodDao.updateObject(food);
	}

	public PageObject listFood(PageObject food, String season, String name, String id) {
		return null;
	}

	public boolean delFoodByIds(String[] ids) {
		return false;
	}

	public Food selectFood(Food food) {
		return this.foodDao.selectObject(food);
	}

	public FoodDao getFoodDao() {
		return foodDao;
	}

	public void setFoodDao(FoodDao foodDao) {
		this.foodDao = foodDao;
	}

	public Food selectFoodByName(String foodName) {
		return null;
	}

	public boolean addFood(Food food, File file, String filePth, String fileName) {
		System.out.println("复制图片：start");
		String savePath = HotelUtils.upLoadFile(file, fileName, filePth);
		System.out.println("复制图片end");
		System.out.println("savePath:" + savePath);
		food.setPicUrl(savePath);
		return this.foodDao.saveObject(food);
	}
}
