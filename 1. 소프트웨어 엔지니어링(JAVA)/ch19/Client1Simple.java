package ch19;

import java.io.DataInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.net.Socket;
import java.net.UnknownHostException;

public class Client1Simple {

	public static void main(String[] args) throws UnknownHostException, IOException {

		Socket socket = new Socket("127.0.0.1", 54321);

		InputStream is = socket.getInputStream();
		DataInputStream dis = new DataInputStream(is);

		String serverMessage = dis.readUTF();
		System.out.println(serverMessage);

		dis.close();
		is.close();
		socket.close();
	} // main

}



