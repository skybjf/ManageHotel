package com.hotel.model;

public class Book {
	private Integer id;		 	//自增Id
	private String name;		//预定人的 姓名
	private String tel;			//预定人的电话
	private String idCard;		//预定人的身份证号码
	private String bookTime;	//预定入住的时间
	private Operator operator;	//受理该预定的管理员
	private String roomNumber;	//预定的房间编号
	private float deposit;		//预定房间已付的订金
	private String timestamp;	// 该预定生成的时间,由系统生成

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

	public String getTel() {
		return tel;
	}

	public void setTel(String tel) {
		this.tel = tel;
	}

	public String getIdCard() {
		return idCard;
	}

	public void setIdCard(String idCard) {
		this.idCard = idCard;
	}

	public String getBookTime() {
		return bookTime;
	}

	public void setBookTime(String bookTime) {
		this.bookTime = bookTime;
	}

	public Operator getOperator() {
		return operator;
	}

	public void setOperator(Operator operator) {
		this.operator = operator;
	}

	public String getRoomNumber() {
		return roomNumber;
	}

	public void setRoomNumber(String roomNumber) {
		this.roomNumber = roomNumber;
	}

	public float getDeposit() {
		return deposit;
	}

	public void setDeposit(float deposit) {
		this.deposit = deposit;
	}

	public String getTimestamp() {
		return timestamp;
	}

	public void setTimestamp(String timestamp) {
		this.timestamp = timestamp;
	}

}
