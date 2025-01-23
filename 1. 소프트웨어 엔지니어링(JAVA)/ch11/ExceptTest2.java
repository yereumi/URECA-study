package ch11;

import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.IOException;

public class ExceptTest2 {

	public static void main(String[] args) {

		try(FileReader fr = new FileReader("C:/URECA/JAVA/java_250120/src/ch09/InnerTest1.java")) {

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
		} // catch

	} // main

}





