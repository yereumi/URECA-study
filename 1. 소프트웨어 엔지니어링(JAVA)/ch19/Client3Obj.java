package ch19;

import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.OutputStream;
import java.net.Socket;
import java.net.UnknownHostException;
import java.util.Scanner;

public class Client3Obj {

	public static void main(String[] args)
			throws UnknownHostException, IOException, ClassNotFoundException {

		Scanner scan = new Scanner(System.in);
		Socket socket = null;
		OutputStream os = null;		ObjectOutputStream oos = null;
		InputStream is = null;		ObjectInputStream ois = null;

		while(true) {
			TCPObj obj = new TCPObj();

			System.out.print("name : ");
			obj.setHostName( scan.nextLine() );
			System.out.print("message : ");
			obj.setMessage( scan.nextLine() );

			socket = new Socket("127.0.0.1", 54321);
			os = socket.getOutputStream();	oos = new ObjectOutputStream(os);
			is = socket.getInputStream();	ois = new ObjectInputStream(is);

			oos.writeObject(obj);
			TCPObj obj2 = (TCPObj) ois.readObject();
			System.out.println(obj2.toString());

			oos.close();
			os.close();
			ois.close();
			is.close();
			socket.close();
		} // while

	} // main

}



