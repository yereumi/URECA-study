package ch04;

public class BreakTest {

	public static void main(String[] args) {

		for(int i = 1; i <= 10; i++) {
			if(i == 5) break; // 5일 때 반복문을 종료함.
			System.out.println("break : " + i);
		} // for

		for(int i = 1; i <= 10; i++) {
			if(i == 5) continue; // 5일 때 수행을 안함.
			System.out.println("continue : " + i);
		} // for

	} // main

} // class
