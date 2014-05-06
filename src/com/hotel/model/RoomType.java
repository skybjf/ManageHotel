package com.hotel.model;

public class RoomType {

	private int id;// 自增ID
	private String roomType;
	private String bed;// 房间床的数量
	private String price;// 价格
	private String remark;// 房间状态
	private String delmark; // 删除标记

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getBed() {
		return bed;
	}

	public void setBed(String bed) {
		this.bed = bed;
	}

	public String getRemark() {
		return remark;
	}

	public void setRemark(String remark) {
		this.remark = remark;
	}

	public String getDelmark() {
		return delmark;
	}

	public void setDelmark(String delmark) {
		this.delmark = delmark;
	}

	public String getRoomType() {
		return roomType;
	}

	public void setRoomType(String roomType) {
		this.roomType = roomType;
	}

	public String getPrice() {
		return price;
	}

	public void setPrice(String price) {
		this.price = price;
	}

}
