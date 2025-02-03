package ch15;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;

public class SortUtil {

	public static void main(String[] args) {

		ArrayList<Integer> list1 = new ArrayList<>();
		list1.add(777);list1.add(999);list1.add(555);
		System.out.println(list1);
		Collections.sort(list1);
		System.out.println(list1);

		int[] iArr = {5, 9, 7, 3};
		for (int i : iArr) {
			System.out.println(i);
		}

		Arrays.sort(iArr);
		for (int i : iArr) {
			System.out.println("after : " + i);
		}
	} // main

}








