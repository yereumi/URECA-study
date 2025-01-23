package ch03;

public class OperTest {

	public static void main(String[] args) {

		int a = 7, b = 7, c = 0, d = 0;
		c = a++; // 대입연산을 ++보다 먼저 수행
		d = ++b; // 대입연산을 ++보다 뒤에 수행
		System.out.printf("a : %d, b : %d, c : %d, d : %d\n", a, b, c, d);
		// a : 8, b : 8, c : 7, d : 8

		a = 7; b = 7; c = 0; d = 0;
		c = a--; // 대입연산을 --보다 먼저 수행
		d = --b; // 대입연산을 --보다 뒤에 수행
		System.out.printf("a : %d, b : %d, c : %d, d : %d\n", a, b, c, d);

		a = 7; b = 7; c = 0; d = 0;
		c = a++ * 3; // ++가 가장 마지막에 수행. 후치연산.
		d = ++b * 3; // ++가 가장 처음에 수행. 전치연산.
		System.out.printf("a : %d, b : %d, c : %d, d : %d\n", a, b, c, d);

		a = 123; b = 4;
		System.out.println( "123 / 4 : " + (a / b) );
		System.out.println( "123 % 4 : " + (a % b) );

		byte byteVar1 = (byte) 128; // 오버플로우
		byteVar1 = (byte) 129;
		byteVar1 = (byte) 130;
		byteVar1 = (byte) 131;
		byteVar1 = (byte) -129; // 언더플로우
		byteVar1 = (byte) -130;
		System.out.println("byteVar1 : " + byteVar1);

		float fVar = 1.23456789F;
		System.out.println(fVar); // float는 소수점 7자리 이후 유효하지 않음.

		//System.out.println( 100 / 0); // ArithmeticException: / by zero
		//System.out.println( 100 % 0); // ArithmeticException: / by zero

		System.out.println( 100 / 0.0);
		System.out.println( 100 % 0.0);

		double dVar1 = 5 / 0.0;
		if(Double.isInfinite(dVar1)) {
			System.out.println("더블 계산 오류!!");
		} else {
			System.out.println("dVar1 : " + dVar1);
		}

		double dVar2 = 5 % 0.0;
		if(Double.isNaN(dVar2)) {
			System.out.println("더블 계산 오류!!");
		} else {
			System.out.println("dVar2 : " + dVar2);
		}

	} // main

} // class



