package ch19;

import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.ServerSocket;
import java.net.Socket;

public class Server2Echo {

	public static void main(String[] args) throws IOException {

		ServerSocket serverSocket = new ServerSocket(54321);
		Socket socket = null;
		InputStream is = null;			OutputStream os = null;
		DataInputStream dis = null;		DataOutputStream dos = null;
		System.out.println("server start.............");

		while(true) {
			socket = serverSocket.accept();
			System.out.println("server accept...........");

			is = socket.getInputStream();
			dis = new DataInputStream(is);

			String clientMessage = dis.readUTF();
			System.out.println("clientMessage : " + clientMessage);

			os = socket.getOutputStream();
			dos = new DataOutputStream(os);

			dos.writeUTF("sever echo client message : " + clientMessage);

			dis.close();
			is.close();
			dos.close();
			os.close();
			socket.close();
		} // while

	} // main

}






