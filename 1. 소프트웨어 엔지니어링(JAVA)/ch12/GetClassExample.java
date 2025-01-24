package ch12;

import java.lang.reflect.Constructor;
import java.lang.reflect.Field;
import java.lang.reflect.Method;

public class GetClassExample {

	public static void main(String[] args) throws Exception {

		Class clazz = Car.class;

		System.out.println("패키지: " + clazz.getPackage().getName());
		System.out.println("클래스 간단이름: " + clazz.getSimpleName());
		System.out.println("클래스 전체이름: " + clazz.getName());

		Constructor[] constructors = clazz.getDeclaredConstructors();
		for(Constructor con : constructors) {
			System.out.println(con);
		}

		Field[] fields = clazz.getDeclaredFields();
		for(Field fil : fields) {
			System.out.println(fil);
		}

		Method[] methods = clazz.getDeclaredMethods();
		for(Method metho : methods) {
			System.out.println(metho);
		}

		String path1 = clazz.getResource("aaa.jpg").getPath();
		System.out.println(path1);

		String path2 = clazz.getResource("resource/bbb.jpg").getPath();
		System.out.println(path2);

	} // main

}




