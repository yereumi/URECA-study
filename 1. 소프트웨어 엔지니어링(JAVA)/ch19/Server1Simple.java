package ch19;

import java.io.DataOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.net.ServerSocket;
import java.net.Socket;

public class Server1Simple {

	public static void main(String[] args) throws IOException {

		ServerSocket serverSocket = new ServerSocket(54321);
		Socket socket = null;
		OutputStream os = null;
		DataOutputStream dos = null;
		System.out.println("server start.............");

		while(true) {
			socket = serverSocket.accept();
			System.out.println("server accept...........");

			os = socket.getOutputStream();
			dos = new DataOutputStream(os);

			dos.writeUTF("sever accept client request.............");

			dos.close();
			os.close();
		} // while

	} // main

}






