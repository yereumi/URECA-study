package ch19;

import java.io.Serializable;

public class TCPObj implements Serializable {

	private String hostName;
	private String message;

	public String getHostName() {
		return hostName;
	}

	public void setHostName(String hostName) {
		this.hostName = hostName;
	}

	public String getMessage() {
		return message;
	}

	public void setMessage(String message) {
		this.message = message;
	}

	@Override
	public String toString() {
		return this.hostName + " : " + this.message;
	}

}
