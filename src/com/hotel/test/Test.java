package com.hotel.test;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.hotel.dao.OperatorDao;
import com.hotel.model.Operator;


public class Test {

	/**
	 * @param args
	 */
	public static void main(String[] args) {
		// TODO Auto-generated method stub
		ApplicationContext con =  new ClassPathXmlApplicationContext("classpath:hotel-context.xml");
		OperatorDao ss = (OperatorDao) con.getBean("operatorDao");
		Operator opt = new Operator();
		opt.setId(5);
		opt.setDelMark("1");
		opt.setMail("213123@qq.com");
		opt.setPwd("123456");
		opt.setUserName("bujiangfeng1");
		opt.setUserType("1");
		ss.saveObject(opt);
//		System.out.println(ss.login(opt));
		
		
//		[{"key1":"value","key2":"value"},
//		{"key1":"value","key2":"value"}]
		
	}

}

