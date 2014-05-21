package com.hotel.util;

import java.io.File;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.List;

import net.sf.json.JSONArray;
import net.sf.json.JSONObject;

import org.aspectj.util.FileUtil;

import com.hotel.base.PageObject;
import com.hotel.model.Operator;
import common.Logger;

public class HotelUtils {
	private final static Logger logger = Logger.getLogger(HotelUtils.class);

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

	public static String getCurrentTimeMillis() {
		return System.currentTimeMillis() + "";
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

	public static String upLoadFile(File file, String fileName, String upPath) {
		String[] imageContentType = fileName.split("\\.");
		String newFileName = getCurrentTimeMillis() + "." + imageContentType[1];
		String filePath = upPath + "\\" + newFileName;
		String sevePath = HotelConfig.getValue("operator.image.path") + newFileName;
		try {
			FileUtil.copyFile(file, new File(filePath));
		} catch (IOException e) {
			logger.error("upload error", e);
			return null;
		}
		return sevePath;
	}

	public static void main(String[] args) {
		System.out.println(HotelUtils.getCurrentTime());

	}

	public static JSONObject toJson(PageObject page) {

		JSONObject object = new JSONObject();
		JSONArray array = new JSONArray();
		List<?> operatorList = page.getList();
		for (Object obj : operatorList) {
			JSONObject json = new JSONObject();
			Operator operator = (Operator) obj;
			json.put("id", operator.getId());
			json.put("userName", operator.getUserName());
			json.put("mail", operator.getMail());
			json.put("gender", operator.getGender().equals("female") ? "女" : "男");
			json.put("userType", operator.getUserType().equals("0") ? "初级管理员" : "超级管理员");
			array.add(json);
		}
		object.put("operator", array);
		object.put("prePage", (page.getCurrentPage() - 1) == 0 ? 1 : (page.getCurrentPage() - 1));
		object.put("nowPage", page.getCurrentPage());
		object.put("nextPage", ((page.getCurrentPage() + 1) == page.getTotalPage()) ? page.getTotalPage() : (page.getCurrentPage() + 1));
		object.put("firstPage", 1);
		object.put("lastPage", page.getTotalPage());
		object.put("pageSize", 10);
		return object;
	}
}
