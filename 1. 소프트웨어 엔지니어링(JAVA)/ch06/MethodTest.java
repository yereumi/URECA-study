package ch06;

public class MethodTest {

	// 접근제한자 리턴타입 메소드명 (파라미터들) {실행코드}
	// 리턴타입 : 이 메소드를 호출하면 가져가는 데이터의 형태, 메소드의 실행 결과 데이터의 형태.
	// (파라미터들) : 이 메소드를 실행하려면, 가져와야 하는 데이터의 형태와 갯수.
	public void name() {
		System.out.println("name test");
		return; // 종료의 의미
//		System.out.println("name test"); // 도달하지 않는 코드
	}
	public void name(String s, int i) {
	}
	public void name(int i, String s) {
	}

	public static void main(String[] args) {
		MethodTest mt = new MethodTest();

		int result = mt.plus(7, 8);

		System.out.println(result);
	}

	public int plus(int iVar1, int iVar2) {
		return iVar1 + iVar2;
//		System.out.println(); // 도달하지 않는 코드
	}

} // class




