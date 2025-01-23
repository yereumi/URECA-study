package ch02;

import java.util.Scanner;

public class ScannerTest {

	public static void main(String[] args) {
		// System : 실행 시스템
		// . : 내부를 의미함
		// out : 출력 버퍼(메모리, 출력 대기열)
		// print : 출력
		// ln : line을 new하라 (엔터키 효과)
		System.out.println(123);

		Scanner scan = new Scanner(System.in);
		// in : 입력 버퍼(메모리, 입력 대기열 - 키보드 입력을 의미함.)
		// Scanner : 데이터를 복사해 오는 객체.

		// scan.nextByte();
		// scan.nextShort();
		// scan.nextLong();
		System.out.print("정수 입력 : ");
		int iVar = scan.nextInt();
		System.out.println("iVar : " + iVar);

		// scan.nextFloat();
		System.out.print("실수 입력 : ");
		double dVar = scan.nextDouble();
		System.out.println("dVar : " + dVar);

		System.out.print("단어 입력 : "); // 띄어쓰기 이전의 문자열 입력
		String s1 = scan.next();
		System.out.println("s1 : " + s1);

		scan.nextLine(); // 엔터값 지우기
		System.out.print("문자 한 줄 입력 : ");
		String s2 = scan.nextLine();
		System.out.println("s2 : " + s2);

		scan.close();
	}

}
