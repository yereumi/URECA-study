package ch07;

public class CastTest {

	public static void main(String[] args) {

		CastSuper su = new CastChild(); // 자동형변환, 다형성 기초.
		su.printSuper();

		CastChild ch = (CastChild) su; // 강제형변환.
		ch.printChild();

		// 이형의 데이터를 담는 배열 : heterogeneous collection. // list, set, map
		CastSuper [] suArr = new CastSuper[4];
		suArr[0] = new CastChild();
		suArr[1] = new CastChild2();

		Object [] oArr = new Object[4];
		oArr[0] = new CastChild();
		oArr[1] = new CastChild2();
		oArr[2] = new Phone();
		oArr[3] = new SmartPhone();

		CastTest tet = new CastTest();
		tet.print(suArr[0]);
		tet.print(suArr[1]);

	} // main

	public void print(CastSuper su) { // polymorphic arguments
		su.printSuper();

		if(su instanceof CastChild) {
			CastChild ch = (CastChild) su;
			ch.printChild();
		} else if(su instanceof CastChild2) {
			CastChild2 ch = (CastChild2) su;
			ch.printChild2();
		}
	}

}





