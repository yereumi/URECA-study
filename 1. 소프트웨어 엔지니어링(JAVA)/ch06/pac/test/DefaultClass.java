package ch06.pac.test;

// Access Modifier : 없음 : 갗은 폴더 안의 class들만 접근 가능.
public class DefaultClass {

	public DefaultClass() {}
	protected DefaultClass(String s1) {}
	private DefaultClass(String s1, String s2) {}

	String defaultStr = "DefaultClass의 defaultStr";

	String className = "DefaultClass";

	void print() {
		System.out.println(className);
	}

}
