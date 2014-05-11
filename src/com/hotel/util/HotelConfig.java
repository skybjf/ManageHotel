package com.hotel.util;

import java.io.IOException;
import java.io.InputStream;
import java.util.Properties;

import org.apache.log4j.Logger;

/**
 * 该类主要用于读取配置文件,将配置文件中的数据load进来
 */
public class HotelConfig {
	public static Properties _conf = new Properties();
	private static Logger log = Logger.getLogger(HotelConfig.class);

	public static Properties loadSysfig() {
		InputStream inputStream = Properties.class.getClassLoader().getResourceAsStream("hotel-config.properties");
		try {
			_conf.load(inputStream);
			inputStream.close();
		} catch (IOException e) {
			log.error("Read InputStream ERROR：", e);
		}
		return _conf;
	}
}
