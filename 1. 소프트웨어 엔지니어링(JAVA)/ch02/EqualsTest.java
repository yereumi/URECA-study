package ch02;

public class EqualsTest {

	public static void main(String[] args) {

		// primitive data type
		int a;
		a = 7;
		int b, c;
		b = 7;
		c = 7;
		int d = 7, e = 7;

		System.out.println(a == b); // true - 내용 비교
		a = 8;

		// objective data type
		String s;
		s = new String("hi");
		String s2, s3;
		s2 = new String("hi");
		s3 = new String("hi");
		String s4 = new String("hi"), s5 = new String("HI");

		System.out.println(s == s2); // false - 위치값 비교
		System.out.println(s.equals(s2)); // true - 참조 내용 비교
		System.out.println(s.equals(s5)); // false - 대소문자의 아스키 값이 다르다.
		System.out.println(s.equalsIgnoreCase(s5)); // true - 대소문자를 무시하고 비교.

		// String 상수.
		String s6 = "hello", s7 = "hello";
		System.out.println("상수 비교 : " + (s6 == s7)); // true
	} // main

} // class
