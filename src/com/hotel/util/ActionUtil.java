package com.hotel.util;

import java.util.Map;

import com.opensymphony.xwork2.ActionContext;

public class ActionUtil {
	// 获取session对象
	public static Map<String, Object> getSession() {

		Map<String, Object> session = ActionContext.getContext().getSession();
		return session;
	}
}