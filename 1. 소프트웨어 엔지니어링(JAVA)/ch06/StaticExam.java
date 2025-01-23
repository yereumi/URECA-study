package ch06;

public class StaticExam {

	int iVar;
	static int sIVar;

	public static void main(String[] args) {

//		System.out.println(iVar); // error
		System.out.println(sIVar);

		StaticExam se = new StaticExam();
		System.out.println(se.iVar);

		StaticClass s1 = new StaticClass();
		StaticClass s2 = new StaticClass();
		s1.staticInt = 777;
		s2.staticInt = 888;
		StaticClass.staticInt = 999;
		System.out.println(s1.staticInt);
		System.out.println(s2.staticInt);

		StaticNonClass no1 = new StaticNonClass();
		no1.nonStaticInt = 777;
		StaticNonClass no2 = new StaticNonClass();
		no2.nonStaticInt = 888;
		System.out.println(no1.nonStaticInt);
		System.out.println(no2.nonStaticInt);
		System.out.println(no1.staticBlockTest);
		System.out.println(no2.staticBlockTest);

	}

}
