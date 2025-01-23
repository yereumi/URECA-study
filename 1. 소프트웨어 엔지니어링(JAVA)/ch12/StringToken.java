package ch12;

import java.util.StringTokenizer;

public class StringToken {

	public static void main(String[] args) {

		String originStr = new String("hi hello how are you nice to meet you");

		String [] sArr = originStr.split(" ");
		for (int i = 0; i < sArr.length; i++) {
			//System.out.println(sArr[i]);
		}

		System.out.println(originStr); // 원본은 살아 있다.

		StringTokenizer st = new StringTokenizer(originStr, " ");
		while( st.hasMoreElements() ) {
			System.out.println( st.nextToken() );
		}

	} // main

}
