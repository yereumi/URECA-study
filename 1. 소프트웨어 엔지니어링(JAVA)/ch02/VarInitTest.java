package ch02;

public class VarInitTest {

	static int a; // 정수 멤버 변수는 0으로 자동 초기화.

	public static void main(String[] args) {
		System.out.println("member variable : " + a);

		int b; // 정수 지역 변수는 자동 초기화 없음. -> 초기화 후 사용해야 한다.
		b = 7;
		System.out.println("local variable : " + b);
	}

}
