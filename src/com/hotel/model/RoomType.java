package com.hotel.model;

public class RoomType {

	private int id;// 自增ID
	private String name;// 房间类别名称
	private String type;// 房屋型号
	private String price;// 价格
	private String discount;// 折扣
	private String description;// 描述
	private String picUrl;// 图片展示
	private String delMark; // 删除标记

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}

	public String getPrice() {
		return price;
	}

	public void setPrice(String price) {
		this.price = price;
	}

	public String getDiscount() {
		return discount;
	}

	public void setDiscount(String discount) {
		this.discount = discount;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
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
