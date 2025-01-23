package ch04;

public class BreakLabel {

	public static void main(String[] args) {

		for(int a = 1; a <= 5; a++ ) {

			naMam : for(int b = 1; b <= 5; b++ ) {

				for(int c = 1; c <= 10; c++ ) {
//					if(c == 3) continue; // 변수 c가 3인 경우만 건너뜀.
//					if(c == 3) continue naMam; // 변수 c의 반복문을 통째로 건너뜀.
					System.out.printf("a : %d, b : %d, c : %d\n", a, b, c);
//					if(c == 3) break; // 변수 c의 반복문 종료.
					if(c == 3) break naMam; // 변수 b의 반복문 종료.
				} // for - c

			} // for - b
			
		} // for - a

	} // main

}
