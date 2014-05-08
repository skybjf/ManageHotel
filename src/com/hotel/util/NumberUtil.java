package com.hotel.util;

public class NumberUtil {
	public static String getOrderNumber(String name) {
		String number ="TLDJD";
		long key = System.currentTimeMillis()/1000;
		return number+key;
	}
}
