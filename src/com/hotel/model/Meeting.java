package com.hotel.model;

public class Meeting {

	private Integer id; 		// 自增ID
	private String theme; 		// 会议主题
	private String time; 		// 会议时间
	private String description; // 会议简介

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getTheme() {
		return theme;
	}

	public void setTheme(String theme) {
		this.theme = theme;
	}

	public String getTime() {
		return time;
	}

	public void setTime(String time) {
		this.time = time;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}
}
