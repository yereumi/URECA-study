package ch14;

import java.awt.Color;
import java.awt.Frame;

class Thread17 extends Thread {
	Thread17Color t17;
	public Thread17(Thread17Color t){
		t17 = t;
	}
	public void run(){
		int colorNum = 255;
		while(colorNum >= 0){
			t17.setColor(colorNum);
			colorNum --;
			try {
				sleep(100);
			} catch (InterruptedException e) {
				e.printStackTrace();
			}
		}
	}
}

public class Thread17Color {

	Frame f = new Frame("Thread17Color");
	Color c;

	private void gogo() {
		f.setSize(250, 250);
		f.setVisible(true);
	}

	public void setColor(int colorNum) {
		c = new Color(255,colorNum,colorNum);
		f.setBackground(c);
	}

	public static void main(String[] args) {
		Thread17Color t17 = new Thread17Color();
		t17.gogo();

		Thread17 thread = new Thread17(t17);
		thread.start();
	}

}
