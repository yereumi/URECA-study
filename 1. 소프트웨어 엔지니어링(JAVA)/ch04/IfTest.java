package ch04;

public class IfTest {

	public static void main(String[] args) {

		int a = 7;
		if(a > 5) System.out.println("a는 5보다 큰 경우.");
		if(a < 5) System.out.println("a는 5보다 작은 경우."); //a가 5인 경우는 제외됨.
		// if의 ()안에는 true/false를 return하는 표현이 들어간다.
		// if의 ()안이 true면 수행, false면 수행 안함.

		if(a < 5) {
			System.out.println("a는 5보다 작은 모든 경우.");
		} else {
			System.out.println("a는 5보다 작지 않은 모든 경우."); //a가 5인 경우도 포함됨.
		}

		int hakjum = 81;
		char grade = 'F';
		if(hakjum > 90) {
			grade = 'A';
		} else if(hakjum > 80) {
			grade = 'B';
		} else if(hakjum > 70) {
			grade = 'C';
		} else if(hakjum > 60) {
			grade = 'D';
		} else {
			grade = 'F';
		} // else

		switch("hi") {

		case "hi" : System.out.println("true"); break;
		case "hello" :System.out.println("false"); break;
		default : System.out.println("default"); break;

		} // switch

	} // main

}








