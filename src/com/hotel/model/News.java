package com.hotel.model;

public class News {
	private Integer id;// 自增ID
	private String title;// 新闻标题
	private String published;// 发布时间
	private String content;// 新闻内容

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getPublished() {
		return published;
	}

	public void setPublished(String published) {
		this.published = published;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public String toLogString() {
		return "News [id=" + id + ", title=" + title + ", published=" + published + ", content=" + content + "]";
	}

}
