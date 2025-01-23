package ch06.pac;

import ch06.pac.test.DefaultClass;

public class AccessTest2 {

	public static void main(String[] args) {

		DefaultClass def = new DefaultClass();
//		def.className = "같은 폴더의 AccessTest에서 이름 변경";
//		def.print(); // error // 같은 폴더를 벗어나면 접근이 안됨.

	}

}
