package ch18;

import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStreamReader;

public class StreamReaderTest {

	public static void main(String[] args) throws IOException {

		FileInputStream fis
			= new FileInputStream("C:/URECA/JAVA/java_250120/src/ch18/han.txt");
		InputStreamReader isr = new InputStreamReader(fis);

		int readInt = 0;
		while((readInt = isr.read()) != -1) {
			System.out.print((char) readInt);
		}
		System.out.println();

		fis.close();


	}

}
