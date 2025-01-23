package ch06;

public class CarExample {

	public static void main(String[] args) {

//		Car car1 = new Car("소나타");
		Car car1 = new Car("자가용", "빨강");
//		Car car1 = new Car("택시", "검정", 200);

		System.out.println("car1.model : " + car1.model);
		System.out.println("car1.company : " + car1.color);
		System.out.println("car1.company : " + car1.maxSpeed);
		
	}

}
