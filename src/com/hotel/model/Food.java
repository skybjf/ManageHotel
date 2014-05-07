package com.hotel.model;

public class Food {

	private Integer id;			//自增ID
	private String name;		//该菜系的名字
	private float price;		//该菜肴的价格
	private String season;		//该菜肴的季节
	private Integer discount;	//该菜肴的折扣
	private String picUrl;		//展示图片路径
	private String delMark;		//删除标记

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public float getPrice() {
		return price;
	}

	public void setPrice(float price) {
		this.price = price;
	}

	public String getSeason() {
		return season;
	}

	public void setSeason(String season) {
		this.season = season;
	}

	public Integer getDiscount() {
		return discount;
	}

	public void setDiscount(Integer discount) {
		this.discount = discount;
	}

	public String getPicUrl() {
		return picUrl;
	}

	public void setPicUrl(String picUrl) {
		this.picUrl = picUrl;
	}

	public String getDelMark() {
		return delMark;
	}

	public void setDelMark(String delMark) {
		this.delMark = delMark;
	}
}
