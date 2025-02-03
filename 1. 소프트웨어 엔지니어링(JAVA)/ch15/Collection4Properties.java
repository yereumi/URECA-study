package ch15;

import java.io.IOException;
import java.util.Properties;

public class Collection4Properties {

	public static void main(String[] args) throws IOException {

		Properties pro1 = new Properties();
		pro1.put(111, "first data");
		pro1.put(222, "second data");
		System.out.println(pro1);

		Properties properties = new Properties();
		properties.load(Collection4Properties.class.getResourceAsStream("db.properties"));
		System.out.println(properties);

		System.out.println(properties.getProperty("driver"));
		System.out.println(properties.getProperty("url"));
		System.out.println(properties.getProperty("username"));
		System.out.println(properties.getProperty("password"));

	} // main

}





