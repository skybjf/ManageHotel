package com.hotel.test;

public class Tests2 {
	public static void main(String[] args) {
		String str = "a";
		String[] a = str.split(",");
		for (String s : a) {
			System.out.println(s);
			System.out.println(a.length);
		}
	}
}
