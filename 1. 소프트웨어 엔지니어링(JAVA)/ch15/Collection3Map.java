package ch15;

import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;

public class Collection3Map {

	public static void main(String[] args) {

		Map<Integer, String> mapOrigin = new HashMap<>();
		mapOrigin.put(1, "hi");
		mapOrigin.put(2, "hello");
		mapOrigin.put(3, "how are you");
		mapOrigin.put(4, "i am fine");
		mapOrigin.put(5, "thank you");

		System.out.println("mapOrigin.size : " + mapOrigin.size());
		System.out.println("mapOrigin.toString : " + mapOrigin.toString());

		Set<Integer> set1 = mapOrigin.keySet();
		System.out.println("keys : " + set1);

		Iterator iter1 = set1.iterator();
		while(iter1.hasNext()) {
			Object key = iter1.next();
			System.out.println(key + " : " + mapOrigin.get(key));
		}

		Collection<String> col1 = mapOrigin.values();
		System.out.println("values : " + col1);

	} // main

}
