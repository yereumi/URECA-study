package ch09;

public class InnerTest1 {

	public class InnerA {
		String s = "여기는 InnerA의 String입니다.";
		InnerA() {
			System.out.println("InnerA 생성자");
		}
		public void innerAPrint() {
			System.out.println( "innerAPrint : " + s );
		}
	} // instance nested class

	private class InnerB {} // instance nested class

	class InnerC {} // instance nested class

	protected class InnerD {} // instance nested class

	public static class InnerE { // static nested class
		public static void innerEPrint() {
			System.out.println("innerEPrint : Static Member Inner Class");
		}
	} // instance nested class

	class InnerF extends InnerC {}

	public interface InnerInfA {}

	protected interface InnerInfB {}

	interface InnerInfC {}

	private interface InnerInfD {}

	interface InnerInfE extends InnerInfA, InnerInfC {}

} // class
