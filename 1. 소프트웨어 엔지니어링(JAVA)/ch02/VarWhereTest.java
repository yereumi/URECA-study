package ch02;

public class VarWhereTest {

	public static void main(String[] args) {

		int aVar = 7;
		{
			int bVar = 8; // 변수의 효력 범위는 선언된 중괄호 내부
			System.out.println("1st brace aVar : " + aVar);
			System.out.println("1st brace bVar : " + bVar);
		}
		System.out.println("main aVar : " + aVar);
		//System.out.println("bVar : " + bVar); // error
		{
			int bVar = 888;
			System.out.println("2nd brace bVar : " + bVar);
		}

		int bVar = 111;
		System.out.println("main bVar : " + bVar);

	}

}



