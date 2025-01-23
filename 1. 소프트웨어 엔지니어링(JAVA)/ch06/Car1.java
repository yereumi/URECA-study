package ch06;

public class Car1 {

	//클래스에 생성자 없으면, 자동 추가됨.
	// default 생성자 : 클래스명(){} : () 파라미터 없는 생성자.

	// 개발자가 생성자를 만들면, 자동 추가되던 default 생성자는 추가되지 않음.
	Car1(String name) {
		System.out.println(name);
	}

	// default 생성자를 만드는 습관!
	Car1(){}

} // class
