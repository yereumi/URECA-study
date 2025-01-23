package ch04;

public class For99 {

	public static void main(String[] args) {

		System.out.println("============= FOR =============");

		for(int dan = 2; dan <= 9; dan++) {
			System.out.println(dan + "단 =========");
			for(int gop = 1; gop <= 9; gop++) {
				System.out.printf("%d * %d = %d\t", dan, gop, dan*gop);
				if(gop % 3 == 0) System.out.println();
			} // for - gop
			System.out.println();
		} // for - dan

		System.out.println("============= WHILE =============");

		int dan = 2;
		while(dan <= 9) {
			System.out.println(dan + "단!!!!!!!!!!!!");

			int gop = 1;
			while(gop <= 9) {
				System.out.printf("%d * %d = %d\t", dan, gop, dan * gop);
				if(gop % 3 == 0) System.out.println();
				gop++;
			} // while - gop
			System.out.println();

			dan++;
		} // while - dan

	} // main

} // class
