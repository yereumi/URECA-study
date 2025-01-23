package ch04;

import java.util.Scanner;

public class DoWhileTest {

	public static void main(String[] args) {

		Scanner scan = new Scanner(System.in);

		int command = 0;
		do {
			System.out.println("0:종료, 그외 숫자는 계속.");
			System.out.print("숫자 입력 : ");
			command = scan.nextInt();
		} while(command != 0);

		scan.close();

	} // main

}
