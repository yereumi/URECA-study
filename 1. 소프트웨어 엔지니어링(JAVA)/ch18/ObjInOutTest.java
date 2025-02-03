package ch18;

import java.io.EOFException;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;

public class ObjInOutTest {

	public static void main(String[] args) throws IOException, ClassNotFoundException {

		FileOutputStream fos
		= new FileOutputStream("C:/URECA/JAVA/java_250120/src/ch18/obj.txt");

		ObjectOutputStream oos = new ObjectOutputStream(fos);

		oos.writeObject(new ObjInOut("유재석", 18));
		oos.writeObject(new ObjInOut("강호동", 19));

		oos.close();
		fos.close();

		FileInputStream fis
		= new FileInputStream("C:/URECA/JAVA/java_250120/src/ch18/obj.txt");
		ObjectInputStream ois = new ObjectInputStream(fis);

		try {
			ObjInOut tmp = (ObjInOut) ois.readObject();
			while( tmp  != null ) {
				System.out.println( tmp.toString() );
				tmp = (ObjInOut) ois.readObject();
			}
		} catch (EOFException e) {
			//
		}

		ois.close();
		fis.close();

	} // main

}








