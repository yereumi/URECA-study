package ch05;

public class StringTest {

	public static void main(String[] args) {

		String originStr = new String("hi hello how are you nice to meet you");
		System.out.println(originStr);

//		System.out.println(originStr.replace('i', 'A'));
//		System.out.println(originStr.replace("you", "U~~"));
//		System.out.println(originStr.replaceAll("o", "O"));
//		System.out.println(originStr.replaceFirst("o", "O"));

//		System.out.println("Answer : " + originStr);
//		System.out.println( originStr.concat(" : Answer") );

//		System.out.println(originStr.substring(9));
//		System.out.println(originStr.substring(3,7)); // 앞 번지 포함, 뒷 번지 불포함.

//		System.out.println(originStr.indexOf('o'));
//		System.out.println(originStr.indexOf('o', 8));
//		System.out.println(originStr.indexOf('i', 5, 15));
//		System.out.println(originStr.lastIndexOf('o'));

//		System.out.println(originStr.indexOf("you"));
//		System.out.println(originStr.indexOf("you", 21));
//		System.out.println(originStr.indexOf("you", 5, 10));
//		System.out.println(originStr.lastIndexOf("you"));

		String [] sArr = originStr.split(" ");
		for (int i = 0; i < sArr.length; i++) {
			System.out.println(sArr[i]);
		}

		System.out.println(originStr); // 원본은 살아 있다.

	} // main

}
