package ch09;

public class InnerTestLocal {

	public void innerClassMethod() {

		class LocalInner {
			public String innerStr = "this is local inner class string...";
			public void localInnerPrint() {
				System.out.println("LocalInner : " + innerStr);
			}
		} // class

		LocalInner inner = new LocalInner();
		inner.innerStr = "Inner String Changed by Method...";
		inner.localInnerPrint();

	} // innerClassMethod

	public static void main(String[] args) {
		InnerTestLocal local = new InnerTestLocal();
		local.innerClassMethod();
	}

}
