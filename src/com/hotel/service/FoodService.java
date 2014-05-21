package com.hotel.service;

import com.hotel.model.Food;

public interface FoodService {
	// add
	boolean addFood(Food food);

	// update
	boolean updateFood(Food food);

	Food selectFood(Food food);

	Food selectFoodByName(String foodName);
}