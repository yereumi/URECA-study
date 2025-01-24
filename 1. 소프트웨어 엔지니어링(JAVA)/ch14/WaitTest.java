package ch14;

class WaitThread implements Runnable {
	int i = 0;
	public synchronized void run() {
		while(i<30) {
			System.out.println(i + " : " + Thread.currentThread().getName());
			i++;
			notifyAll();
			try {
				this.wait();
			} catch (InterruptedException e) {
				e.printStackTrace();
			}
		} // while
	} // run
} //class

public class WaitTest {

	public static void main(String[] args) {
		WaitThread wt = new WaitThread();
		Thread t1 = new Thread(wt, "1111111");
		Thread t2 = new Thread(wt, "22222");
		Thread t3 = new Thread(wt, "333");
		t1.start();
		t2.start();
		t3.start();
	}

}
