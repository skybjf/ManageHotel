package com.hotel.test;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.hotel.model.Operator;
import com.hotel.service.OperatorService;

public class Test {

	/**
	 * @param args
	 */
	public static void main(String[] args) {
		// TODO Auto-generated method stub
		ApplicationContext con = new ClassPathXmlApplicationContext("classpath:hotel-context.xml");

		OperatorService ss = (OperatorService) con.getBean("operatorService");
		 Operator opt = new Operator();
//		 opt.setId(7);
//		 opt.setDelMark("1");
//		 opt.setMail("213123@qq.com");
//		 opt.setPwd("123456");
//		 opt.setUserName("bujiangfeng1");
//		 opt.setUserType("1");
//		 ss.delOperator(opt);
//		 ss.addOperator(opt);
		 String [] aa = new String[2];
		 ss.updateOperatorIds(aa);
		// [{"key1":"value","key2":"value"},
		// {"key1":"value","key2":"value"}]

	}

}
