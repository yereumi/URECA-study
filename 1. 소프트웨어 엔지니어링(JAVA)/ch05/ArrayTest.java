package ch05;

public class ArrayTest {

	public static void main(String[] args) {

		int [] iArr1;
		int iArr2 [];

		iArr1 = new int[3];
		System.out.println( "iArr1.length : " + iArr1.length ); // length는 3, index는 0,1,2
		System.out.println( "iArr1[0] : " + iArr1[0] ); // 기본 데이터 타입은 기본 초기화.
//		System.out.println( "iArr1[3] : " + iArr1[3] ); // ArrayIndexOutOfBoundsException

		int [] iArr3 = new int [3];

		int [] iArr4 = {999, 777, 888}; // 생성과 동시에 값을 대입.
//		iArr2 = {555, 777, 333}; // error // 생성과 동시에 값을 대입하는 것은 배열 선언시에만 가능.
		iArr2 = new int [] {555, 777, 333};

	} // main

}





