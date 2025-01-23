package ch06.pac.test;

// Access Modifier : private : 외부에 공개하지 않는 변수나 메소드, 자기 클래스에서만 사용 가능.
public class PrivateClass {

	String defaultStr = "PrivateClass의 defaultStr";

	private String className = "PrivateClass"; // 오류 데이터 입력 금지.

	private void privateMethod() {
		System.out.println("privateMethod");
	}

	private int age;
	public void setAge( int age ) {
		if(age < 0) {
			System.out.println("나이는 0보다 작을 수 없음.");
		} else {
			this.age = age;
		}
	} // setAge

}
