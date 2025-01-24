package ch12;

import java.text.SimpleDateFormat;
import java.util.Date;

public class DateFormatTest {

	public static void main(String[] args) {

		Date date = new Date();
		System.out.println(date);

		SimpleDateFormat naljaFormat = new SimpleDateFormat("_yyyymmdd");
		String naljaStr = naljaFormat.format(date);
		System.out.println(naljaStr);

		SimpleDateFormat siganFormat = new SimpleDateFormat("_HHmmss");
		String siganStr = siganFormat.format(date);
		System.out.println(siganStr);

		String fileName = "uploadFile";
		String savedFileName = fileName + naljaStr + siganStr;
		System.out.println(savedFileName);
	} // main

}
