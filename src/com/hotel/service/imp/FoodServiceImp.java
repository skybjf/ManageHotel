package com.hotel.service.imp;

import com.hotel.dao.FoodDao;
import com.hotel.model.Food;
import com.hotel.service.FoodService;

public class FoodServiceImp implements FoodService {

	private FoodDao foodDao;

	public boolean addFood(Food food) {
		return false;
	}

	public boolean updateFood(Food food) {
		return this.foodDao.updateObject(food);
	}

	public Food selectFood(Food food) {
		return this.foodDao.selectObject(food);
	}

	public Food selectFoodByName(String foodName) {
		return null;
	}

	public FoodDao getFoodDao() {
		return foodDao;
	}

	public void setFoodDao(FoodDao foodDao) {
		this.foodDao = foodDao;
	}
}
