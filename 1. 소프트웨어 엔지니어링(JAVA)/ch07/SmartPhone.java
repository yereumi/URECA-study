package ch07;

public class SmartPhone extends Phone {

	public SmartPhone() {
		System.out.println("SmartPhone 생성자");
	}

	//자식 생성자 선언
	public SmartPhone(String model, String color) {
		super();
		this.model = model;
		this.color = color;
		System.out.println("SmartPhone(String model, String color) 생성자 실행됨");
	}
}

