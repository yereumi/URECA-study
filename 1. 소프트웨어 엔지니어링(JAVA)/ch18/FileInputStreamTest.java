package ch18;

import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.FileReader;
import java.io.FileWriter;
import java.io.IOException;

/*
 * Java IO : InputStream & OutputStream
 * - Java IO Stream : data의 이동을 의미.
 * - InputStream : 외부에서 myProgram으로 data 이동.
 * - OutputStream : myProgram에서 외부로 data 이동.
 * - NodeStream(기반) : data source와 destination을 연결.
 *                     FileInputStream, FileOutputStream.
 * - FilterStream(data 조작) : data 가공하거나, 편리한 기능을 제공.
 *                            반드시 NodeStream과 함께 사용.
 *                            InputStreamReader, OutputStreamWriter.
 * - ByteStream (8bit 전송) : 입출력 단위가 8bit. 비영어권 문자 표현에 제약이 있음.
 *                           class name이 ~InputStream, ~OutputStream.
 * - CharStream (16bit 전송) : 입출력 단위가 16bit. 비영어권 문자 표현 가능.
 *                            class name이 ~Reader, ~Writer.
 * - 주의!!! : NodeStream과 FilterStream 조합 시, 16bit는 16bit 끼리, 8bit는 8bit 끼리 조합한다.
 * - 주의!!! : 생성한 Java IO는 반드시 close() 해야 한다.
 * - 주의!!! : Java IO를 close() 할 때는 반드시 생성한 역순으로 close() 한다.
 * - flush() : Writer와 OutputStream에서 data를 밀어낼 때 사용.
 */
public class FileInputStreamTest {

	public static void main(String[] args) throws IOException {

		FileInputStream fis
			= new FileInputStream("C:/URECA/JAVA/java_250120/src/ch15/db.properties");

		FileOutputStream fos
			= new FileOutputStream("C:/URECA/JAVA/java_250120/src/ch18/outtest.txt");

		int readInt = 0;
		while((readInt = fis.read()) != -1) {
			System.out.print((char) readInt);
			fos.write(readInt);
		}
		System.out.println();

		fis.close();
		fos.close();

		FileReader fr
			= new FileReader("C:/URECA/JAVA/java_250120/src/ch18/han.txt");

		FileWriter fw
			= new FileWriter("C:/URECA/JAVA/java_250120/src/ch18/hancopy.txt");

		long milli1 = System.currentTimeMillis();

		int readInt2 = 0;
		while((readInt2 = fr.read()) != -1) {
			System.out.print((char) readInt2);
			fw.write(readInt2);
		}

		long milli2 = System.currentTimeMillis();

		System.out.println(milli2 - milli1);

		fr.close();
		fw.close();

	} // main

}
