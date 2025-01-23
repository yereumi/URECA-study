package ch08;

public interface RemoteControl {

	public int a = 0; // 자동으로 static final이 붙어서 상수화 됨.
	public static int b = 0; // 자동으로 static final이 붙어서 상수화 됨.
	public static final int SAMPLE_INT = 0;

	//추상 메소드
	void turnOn();

	public default void name() {
		turnOn();
		System.out.println(SAMPLE_INT);
	}

	public static void name2() {}

	private void name3() {}

	private static void name4() {}

}
