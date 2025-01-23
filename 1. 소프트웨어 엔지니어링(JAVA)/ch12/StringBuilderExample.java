package ch12;

public class StringBuilderExample {
	public static void main(String[] args) {
		String data = new StringBuilder()
				.append("GHI ")
				.append("DEF")
				.insert(1, "ABC")
				.delete(3, 4)
				.toString();
		System.out.println(data);
	}
}
