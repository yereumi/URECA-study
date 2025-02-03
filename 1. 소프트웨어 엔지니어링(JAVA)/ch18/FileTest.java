package ch18;

import java.io.File;

public class FileTest {

	public static void main(String[] args) {

		// File : 파일 또는 디렉토리를 지칭.
		File f1 = new File("C:\\Users\\student");
		System.out.println(f1.exists());
		System.out.println(f1.isDirectory());
		System.out.println(f1.isFile());
		System.out.println("=============");

		File f2 = new File("C:/URECA/JAVA/java_250120/src/ch18/obj.txt");
		System.out.println(f2.isDirectory());
		System.out.println(f2.isFile());
		System.out.println(f2.canRead());
		System.out.println(f2.canWrite());
		System.out.println(f2.canExecute());
		System.out.println("=============");

		File f3 = new File("C:/URECA/JAVA/java_250120/src/ch18/obj.txt");
		System.out.println(f3.getName());
		System.out.println(f3.getPath());
		System.out.println(f3.getAbsolutePath());
		System.out.println(f3.getParent());
		System.out.println(f3.getParentFile());
		System.out.println(f3.getParentFile().getName());
		System.out.println("=============");

		File f4 = new File("C:\\Users\\student\\Desktop");
		String [] sArr = f4.list();
		for(String s : sArr) {
			System.out.println(s);
		}//for
		System.out.println("=============");

		File [] fArr = f4.listFiles();
		for(File f : fArr) {
			System.out.println(f);
		}
		System.out.println("=============");

//		f3.delete();

	} // main

}
