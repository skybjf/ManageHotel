package com.hotel.enums;

/**
 * 该类为数据库表明枚举，因本工程采用hibernate管理数据库 ，故每个表名实际上是其所映射的类名
 * 
 */
public enum TablesEnum {

	BOOK(1, "Book"),
	FOOD(2, "Food"),
	MEETING(3, "Meeting"), 
	NEWS(4, "News"), 
	OPERATOR(5, "Operator"),
	ORDER(6, "Order"), 
	RECRUITMENT(7, "Recruitment"),
	ROONINFO(8, "RoomInfo"), 
	ROOMTYPE(9, "RoonType"),
	;

	int code;
	String tableName;


	TablesEnum(int code, String tableName) {
		this.code = code;
		this.tableName = tableName;
	}

	public int getCode() {
		return code;
	}

	public String getTableName() {
		return tableName;
	}
}
