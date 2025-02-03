package ch15;

import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;

public class Collection2Iterator {

	public static void main(String[] args) {

		ArrayList<String> origin2 = new ArrayList<>();
		origin2.add("Before First");
		origin2.add("First");
		origin2.add("Four");

		Iterator<String> iter1 = origin2.iterator();
		while (iter1.hasNext()) { // hasNext : 현재 커서 위치의 다음 위치에 데이터가 있는가?
			String str = (String) iter1.next(); // next : 커서 이동 + 데이터 읽기.
			System.out.println(str);
		}

		Set<String> setOrigin = new HashSet<>();
		setOrigin.add("Before First");
		setOrigin.add("First");
		setOrigin.add("Four");
		setOrigin.add(new String("Four"));

		System.out.println("setOrigin.toString : " + setOrigin.toString());

		Object objArr[] = setOrigin.toArray();
		for (int i = 0; i < objArr.length; i++) {
			String str = (String) objArr[i];
			System.out.println(i + " : " + str);
		}

		Iterator<String> iter2 = setOrigin.iterator();
		while (iter2.hasNext()) {
			String str = iter2.next();
			System.out.println(str);
		}

	} // main

}





