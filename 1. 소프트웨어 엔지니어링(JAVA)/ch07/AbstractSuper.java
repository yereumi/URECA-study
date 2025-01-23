package ch07;

public abstract class AbstractSuper { // Person

	public static final int SAMPLE_INT = 0;
	public String name;
	public String ssn;

	public abstract void print(); // 구현은 자식 객체에서 하라. 이름만 통일!

	public void name() {
		System.out.println("일반 메소드 선언 가능");
	}
}
