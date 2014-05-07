package com.hotel.model;

/**
 * @author LXG
 * 该类为招聘信息model
 */

public class Recruitment {

	private Integer id; 			//自增ID
	private String name;			//招聘职位
	private float salary;			//该职位的薪资
	private Integer peopleNumber;	//招聘人人数
	private String description;		//职位描述
	private String published;		//发布时间
	private String delMark;			//删除标记
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
	public float getSalary() {
		return salary;
	}
	public void setSalary(float salary) {
		this.salary = salary;
	}
	public Integer getPeopleNumber() {
		return peopleNumber;
	}
	public void setPeopleNumber(Integer peopleNumber) {
		this.peopleNumber = peopleNumber;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public String getPublished() {
		return published;
	}
	public void setPublished(String published) {
		this.published = published;
	}
	public String getDelMark() {
		return delMark;
	}
	public void setDelMark(String delMark) {
		this.delMark = delMark;
	}
	
}
