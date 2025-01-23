package ch12;

public class ObjectTestMain {

	public static void main(String[] args) {

		ObjectTest ot1 = new ObjectTest();
		System.out.println(ot1.hashCode());

		ObjectTest ot2 = new ObjectTest("강호동","2000");
		System.out.println(ot2.toString());

		ObjectTest ot3 = new ObjectTest("강호동","2000");
		System.out.println(ot2.equals(ot3));

		ObjectTest ot4 = new ObjectTest("강호동","1999");
		System.out.println(ot2.equals(ot4));

	}

}
