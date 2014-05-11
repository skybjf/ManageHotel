package com.hotel.util;

import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;

public class HotelUtils {

	public final static int SECOND = 1000;

	public final static int MINUTE = 60 * SECOND;

	public final static int HOUR = 60 * MINUTE;

	public final static int DAY = 24 * HOUR;

	public final static int WEEK = 7 * DAY;

	public final static int PAGE_SIZE = 12;

	public final static SimpleDateFormat yearMonthDayHourMinuteSecond = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");

	public final static SimpleDateFormat yearMonthDay = new SimpleDateFormat("yyyy-MM-dd");

	public static String getCurrentTime() {
		return yearMonthDayHourMinuteSecond.format(new Date());
	}

	public static Calendar getCalendar() {
		return Calendar.getInstance();
	}

	public static String getOrderNumber(String name) {
		String number = "TLDJD";
		long key = System.currentTimeMillis() / 1000;
		return number + key;
	}

	public static String spliceToSqlString(String[] ids) {
		String sql = "";
		// sql 语句每个单词之间需要空格
		StringBuilder sb = new StringBuilder(" where id in ('");
		if (ids.length >= 1) {
			for (String id : ids) {
				sb.append(id).append("','");
			}
		}
		sql = sb.substring(0, sb.length() - 2);
		return sql + ")";
	}

	public static void main(String[] args) {
		System.out.println(HotelUtils.getCurrentTime());

	}
}
