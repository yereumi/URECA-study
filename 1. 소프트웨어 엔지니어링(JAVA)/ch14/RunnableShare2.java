package ch14;

class DataShare2 implements Runnable {
	int i = 0;
	@Override
	public synchronized void run() {
		while(i < 30) {
			System.out.println(i + " : " + Thread.currentThread().getName());
			i++;
		} // while
	} // run
}

public class RunnableShare2 {

	public static void main(String[] args) {
		DataShare2 ds = new DataShare2();
		Thread t1 = new Thread(ds, "1111111");
		Thread t2 = new Thread(ds, "22222222222");
		Thread t3 = new Thread(ds, "33333");
		t1.start();
		t2.start();
		t3.start();
	}

}


