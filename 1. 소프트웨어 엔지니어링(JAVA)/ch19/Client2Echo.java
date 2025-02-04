package ch19;

import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.Socket;
import java.net.UnknownHostException;

public class Client2Echo {

	public static void main(String[] args) throws UnknownHostException, IOException {

		Socket socket = new Socket("127.0.0.1", 54321);

		OutputStream os = socket.getOutputStream();
		DataOutputStream dos = new DataOutputStream(os);

		dos.writeUTF("from rjh");

		InputStream is = socket.getInputStream();
		DataInputStream dis = new DataInputStream(is);

		String serverMessage = dis.readUTF();
		System.out.println(serverMessage);

		dos.close();
		os.close();
		dis.close();
		is.close();
		socket.close();
	} // main

}



