package ch08;

public class RemoteControlExample {

	public static void main(String[] args) {
		// 인터페이스를 사용한 polymorphism 구현.
		RemoteControl [] rcArr = new RemoteControl[2];
		rcArr[0] = new Audio();
//		rcArr[0].a = 777; // error // 자동으로 static final이 붙어서 상수화 됨.
//		rcArr[0].b = 888; // error // 자동으로 static final이 붙어서 상수화 됨.
		rcArr[1] = new Television();
	}

}
