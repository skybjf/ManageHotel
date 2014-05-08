package com.hotel.enums;

import java.util.HashMap;

public enum RoomStateEnum {

	NONE(1,"none"),
	CHECK(2,"check"),
	BOOK(3,"book"),
	PAUSE(4,"pause"),
	;
	static HashMap<Integer,RoomStateEnum> hm = new HashMap<Integer,RoomStateEnum >();
	static{
		hm.put(1, NONE);
		hm.put(2, CHECK);
		hm.put(3, BOOK);
		hm.put(4, PAUSE);
	}

	int code;
	String state;
	
	public int getCode() {
		return code;
	}
	public String getState() {
		return state;
	}
	RoomStateEnum(int code,String state){
		this.code=code;
		this.state=state;
	}
	RoomStateEnum getRoomStateEnum(int code){
		return hm.get(code);
	}
	
}
