package com.hotel.model;

public class RoomInfo {

	private int id;//自增ID
	private String roomNum;//房间编号
	private int roomTypeId;//房间类型ID
	private String state;//房间状态
	private String roomTel;//房间电话
	private String remark ;//备注
	private String delmark;//删除标记
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getRoomNum() {
		return roomNum;
	}
	public void setRoomNum(String roomNum) {
		this.roomNum = roomNum;
	}
	public int getRoomTypeId() {
		return roomTypeId;
	}
	public void setRoomTypeId(int roomTypeId) {
		this.roomTypeId = roomTypeId;
	}
	public String getState() {
		return state;
	}
	public void setState(String state) {
		this.state = state;
	}
	public String getRoomTel() {
		return roomTel;
	}
	public void setRoomTel(String roomTel) {
		this.roomTel = roomTel;
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
	
}
