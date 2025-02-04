package ch19;

import java.io.IOException;
import java.io.InputStream;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.OutputStream;
import java.net.ServerSocket;
import java.net.Socket;

public class Server3Obj {

	public static void main(String[] args) throws IOException, ClassNotFoundException {

		ServerSocket serverSocket = new ServerSocket(54321);
		Socket socket = null;
		InputStream is = null;			OutputStream os = null;
		ObjectInputStream ois = null;	ObjectOutputStream oos = null;
		System.out.println("server start.............");

		while(true) {
			socket = serverSocket.accept();
			System.out.println("server accept...........");

			is = socket.getInputStream();			ois = new ObjectInputStream(is);
			os = socket.getOutputStream();			oos = new ObjectOutputStream(os);

			TCPObj obj = (TCPObj) ois.readObject();
			obj.setHostName( "from server " + obj.getHostName() );
			System.out.println( "clientMessage : " + obj.toString() );

			oos.writeObject(obj);

			ois.close();
			is.close();
			oos.close();
			os.close();
			socket.close();
		} // while

	} // main

}






