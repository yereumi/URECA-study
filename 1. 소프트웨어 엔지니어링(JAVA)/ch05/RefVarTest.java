package ch05;

public class RefVarTest {

	public static void main(String[] args) {

		String s1 = new String("hi");
		String s2 = new String("hi");
		String s3 = s2;

		System.out.println(s1 == s2); // false
		System.out.println(s2 == s3); // true

		String s4 = new String("여행");
		s4 = null; // new String("여행")은 쓰레기 수거 대상.

		String s5 = new String("취미");
		String s6 = s5; // pass by reference
		s5 = null;


	} // main

}












