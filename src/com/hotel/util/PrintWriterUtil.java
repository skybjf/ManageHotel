package com.hotel.util;

import java.io.PrintWriter;

import javax.servlet.http.HttpServletResponse;

import org.apache.struts2.ServletActionContext;

public class PrintWriterUtil {
	public static PrintWriter getJsonPrintWriter() {
		HttpServletResponse response = ServletActionContext.getResponse();
		response.setContentType("application/json,charset=utf-8");
		PrintWriter out = null;
		try {
			out = response.getWriter();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return out;
	}

	public static PrintWriter getPrintWriter() {
		HttpServletResponse response = ServletActionContext.getResponse();
		PrintWriter out = null;
		try {
			out = response.getWriter();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return out;
	}
}