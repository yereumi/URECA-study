package ch02;

public class PrintTest {

	public static void main(String[] args) {

		System.out.print("Hi\t");
		System.out.print("Hello\n");
		System.out.print("HowAreYou");
		System.out.println();
		System.out.printf("%s이 %s에게 %d만원을 년이자 %f에 빌렸다.\n", "홍길동", "국민은행", 200, 3.14);

		System.out.printf("%6d\n", 200);
		System.out.printf("%-6d\n", 200);
		System.out.printf("%06d\n", 200);

		System.out.printf("%s이 %s에게 %d만원을 년이자 %10.3f에 빌렸다.\n", "홍길동", "국민은행", 200, 3.14);
		// %10.3f : 전체 10자리(정수7자리, 소수점3자리).
	}

}
