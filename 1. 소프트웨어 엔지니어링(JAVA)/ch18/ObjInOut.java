package ch18;

import java.io.Serializable;

public class ObjInOut implements Serializable {

	public String name;
	public int age;

	public ObjInOut(String name, int age) {
		this.name = name;
		this.age = age;
	}

	@Override
	public String toString() {
		return this.name + " : " + this.age;
	}

}
