package com.hotel.model;

public class RoomInfo {

	private String id;// 房间编号
	private int roomTypeId;// 房间类型ID
	private String state;// 房间状态
	private String bookTime;// 预定时间
	private String delMark;// 删除标记

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
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

	public String getBookTime() {
		return bookTime;
	}

	public void setBookTime(String bookTime) {
		this.bookTime = bookTime;
	}

	public String getDelMark() {
		return delMark;
	}

	public void setDelMark(String delMark) {
		this.delMark = delMark;
	}

	public String toLogString() {
		return "RoomInfo [id=" + id + ", roomTypeId=" + roomTypeId + ", state=" + state + ", bookTime=" + bookTime + ", delMark=" + delMark + "]";
	}

}
