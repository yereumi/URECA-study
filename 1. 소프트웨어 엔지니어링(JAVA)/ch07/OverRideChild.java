package ch07;

import java.io.IOException;

public class OverRideChild extends OverRideSuper {

//	@Override
//	public void overTest(String s1, String s2) {} // error

//	@Override
//	public void overTest2(String s1) {} // error

//	@Override
//	public int overTest(String s1) {return 0;} // error

//	@Override
//	void overTest(String s1) {return 0;} // error

//	@Override
//	public void overTest2(String s1) throws Exception {} // error

//	@Override
//	public void overTest2(String s1) throws IOException {}

	@Override
	public void overTest2(String s1) throws IOException {
		System.out.println("여기는 자식 클래스...");
		super.overTest2("의미없는 문자열");
	}

}








