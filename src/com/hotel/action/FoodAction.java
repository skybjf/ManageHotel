package com.hotel.action;

import java.io.File;

import org.apache.struts2.ServletActionContext;

import com.hotel.model.Food;
import com.hotel.service.FoodService;
import com.opensymphony.xwork2.ActionSupport;

public class FoodAction extends ActionSupport {

	private static final long serialVersionUID = -649453106166062210L;

	private FoodService foodService;
	private Food food;
	private File image;
	private String imageFileName;

	private String imageContentType;

	// 通过ajax 获取菜肴名字是否存在,然后通知管理员下一步的操作
	public String getFoodNameEnable() {
		this.food = this.foodService.selectFoodByName(food.getName());
		if (food != null) {
			return "exist";
		}
		return "none";
	}

	public String addFood() {
		String path = ServletActionContext.getServletContext().getRealPath("/img/food");
		System.out.println("ServletActionContext :" + ServletActionContext.getServletContext().getRealPath("/img/food"));
		System.out.println("fileName:" + imageFileName);
		System.out.println("file :" + image.length());
		food = new Food();
		food.setId(1);
		food.setName("adafadf");
		foodService.addFood(food, image, path, imageFileName);
		return "ok";
	}

	public FoodService getFoodService() {
		return foodService;
	}

	public void setFoodService(FoodService foodService) {
		this.foodService = foodService;
	}

	public Food getFood() {
		return food;
	}

	public void setFood(Food food) {
		this.food = food;

	}

	public String getImageContentType() {
		return imageContentType;
	}

	public void setImageContentType(String imageContentType) {
		this.imageContentType = imageContentType;
	}

	public File getImage() {
		return image;
	}

	public void setImage(File image) {
		this.image = image;
	}

	public String getImageFileName() {
		return imageFileName;
	}

	public void setImageFileName(String imageFileName) {
		this.imageFileName = imageFileName;
	}
}
