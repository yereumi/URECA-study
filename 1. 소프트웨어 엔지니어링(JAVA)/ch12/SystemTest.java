package ch12;

import java.util.Iterator;
import java.util.Map;
import java.util.Set;

public class SystemTest {

	public static void main(String[] args) {

		Map<String,String> envMap = System.getenv();

		Set<String> keys = envMap.keySet();

		Iterator<String> iter = keys.iterator();

		while(iter.hasNext()) {
			String keyNm = iter.next();
			System.out.print(keyNm + " : ");
			System.out.println(envMap.get(keyNm));
		}

	}

}
