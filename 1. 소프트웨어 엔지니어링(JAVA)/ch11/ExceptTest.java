package ch11;

import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.IOException;

public class ExceptTest {

	public static void main(String[] args) {

		FileReader fr = null;

		try{
			fr = new FileReader("C:/URECA/JAVA/java_250120/src/ch09/InnerTest1.java");
			//fr = new FileReader("C:/URECA/JAVA/java_250120/src/ch09/InnerTest1"); // 예외 발생

			int i = fr.read();

			while(i != -1) {
				System.out.print( (char) i );
				i = fr.read();
			}
		} catch(FileNotFoundException e) {
			System.out.println("--- FileNotFoundException ---");
		} catch(IOException e) {
			System.out.println("--- IOException ---");
		} catch(Exception e) {
			System.out.println("--- Exception ---");
		} finally {
			try {
				fr.close();
			} catch (IOException e) {
				e.printStackTrace();
			}
		} // finally

	} // main

}





