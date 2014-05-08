package com.hotel.enums;

public enum SeasonEnum {

	SPRING(1, "spring"), 
	SUMMER(1, "summer"),
	AUTUMN(1, "autumn"),
	WINTER(1, "winter"), ;
	int code;
	String seasonName;

	public int getCode() {
		return code;
	}

	public String getSeasonName() {
		return seasonName;
	}


	SeasonEnum(int code, String seasonName) {
		this.code = code;
		this.seasonName = seasonName;
	}
}
