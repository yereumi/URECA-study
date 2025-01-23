package ch04;

import java.util.Iterator;

public class ForStar {

	public static void main(String[] args) {

		for(int y = 0; y < 5; y++) {
			for(int x = 5; x > 0; x--) {
				if(x == y) break;
				System.out.print(" ");
			}
			for (int x = 0; x < 10; x++) {
				System.out.print("*");
				if(x/2 == y) break;
			}
			System.out.println();
		} // for

		System.out.println("===========");

		for(int y = 0; y < 5; y++) {
			for(int x = 0; x < 5; x++) {
				System.out.print(" ");
				if(x == y) break;
			}
			for (int x = 10; x > 0; x--) {
				if(x/2 == y) break;
				System.out.print("*");
			}
			System.out.println();
		} // for

	} // main

} // class
