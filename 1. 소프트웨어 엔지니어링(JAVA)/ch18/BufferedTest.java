package ch18;

import java.io.BufferedReader;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStreamReader;

public class BufferedTest {

	public static void main(String[] args) throws IOException {

		FileInputStream fis
		= new FileInputStream("C:/URECA/JAVA/java_250120/src/ch18/han.txt");

		InputStreamReader isr = new InputStreamReader(fis);

		BufferedReader br = new BufferedReader(isr);

		long milli1 = System.currentTimeMillis();

		int readInt = 0;
		while( (readInt = br.read()) != -1 ) {
			System.out.print( (char) readInt );
		}

		long milli2 = System.currentTimeMillis();

		System.out.println(milli2 - milli1);

		br.close();
		isr.close();
		fis.close();

	} // main

}







