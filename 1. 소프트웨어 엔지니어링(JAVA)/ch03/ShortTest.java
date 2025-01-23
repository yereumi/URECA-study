package ch03;

public class ShortTest {

	public static void main(String[] args) {

//		System.out.println( 1 < 2 ); // true

		if( 1 < 2 | 0 < 2 ) System.out.println("| TRUE");

		// if( 1 < 2 | (5/0) < 2 ) System.out.println("TRUE"); // ArithmeticException: / by zero

		// 숏 서킷 로직 : || 좌의 로직이 true면, 우의 로직을 검사하지 않는다.
		if( 1 < 2 || (5/0) < 2 ) System.out.println("|| TRUE");

		// 숏 서킷 로직 : && 좌의 로직이 false면, 우의 로직을 검사하지 않는다.
		if( 1 > 2 && (5/0) < 2 ) System.out.println("&& FALSE");

	} // main

} // class
