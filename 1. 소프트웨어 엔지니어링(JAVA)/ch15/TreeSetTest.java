package ch15;

import java.util.TreeSet;

public class TreeSetTest {

	public static void main(String[] args) {

		TreeSet<Integer> tset1 = new TreeSet<>();
		tset1.add(333);
		tset1.add(222);
		tset1.add(111);
		tset1.add(444);
		tset1.add(555);
		System.out.println(tset1);

		TreeSet<TreeSetObj> tset2 = new TreeSet<>();
		tset2.add(new TreeSetObj(555));
		tset2.add(new TreeSetObj(444));
		tset2.add(new TreeSetObj(111));
		tset2.add(new TreeSetObj(222));
		tset2.add(new TreeSetObj(333));
		System.out.println(tset2);

	} // main

}
