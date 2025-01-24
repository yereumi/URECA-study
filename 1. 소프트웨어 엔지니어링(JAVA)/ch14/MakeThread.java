package ch14;

class Thread1 extends Thread {
	public Thread1(String name) {
		super(name);
	}
	@Override
	public void run() { // 쓰레드가 작업하는 코드는 run() 메소드에 작성.
		for (int i = 0; i < 10; i++) {
			System.out.println("Thread1 : " + i);
		}
	}
} // class

class Thread2 implements Runnable {
	@Override
	public void run() { // 쓰레드가 작업하는 코드는 run() 메소드에 작성.
		for (int i = 0; i < 10; i++) {
			System.out.println("Thread2 : " + i);
		}
	}
}

public class MakeThread {
	public static void main(String[] args) {
		Thread1 t1 = new Thread1("first");

		Thread2 t2 = new Thread2();
		Thread thread = new Thread(t2, "second Thread");

		System.out.println("t1.getName() : " + t1.getName());
		System.out.println("thread.getName() : " + thread.getName());

		System.out.println("t1.getState() : " + t1.getState());

		t1.start();
		thread.start();

		System.out.println("t1.getState() : " + t1.getState());

		try {
			Thread.sleep(1000); // 메인 쓰레드를 잠재움.
		} catch (InterruptedException e) {
			e.printStackTrace();
		}

		System.out.println("t1.getState() : " + t1.getState());
	}

}








