package com.hotel.util;

public class SqlStringUtils {

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

		String[] ids = new String[3];
		for (int i = 0; i < ids.length; i++) {
			ids[i] = i + "";
		}
		System.out.println(SqlStringUtils.spliceToSqlString(ids));
	}
}
