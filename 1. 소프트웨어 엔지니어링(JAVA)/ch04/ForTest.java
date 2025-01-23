package ch04;

public class ForTest {

	public static void main(String[] args) {

		for(int i = 1; i <= 10; i++) { // (초기식; 비교식; 증감식)
			System.out.println("for : " + i);
		}

		int i = 1; // 초기식
		while(i <= 10) { // (비교식)
			System.out.println("while : " + i);
			i++; // 증감식
		} // while

	} // main

}


