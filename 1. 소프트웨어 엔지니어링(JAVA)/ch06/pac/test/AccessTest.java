package ch06.pac.test;

public class AccessTest {

	public static void main(String[] args) {

		DefaultClass def = new DefaultClass();
		def.className = "같은 폴더의 AccessTest에서 이름 변경";
		def.print();

		PrivateClass priv = new PrivateClass();
//		priv.age = -10; // error
		priv.setAge(-10);

	}

}
