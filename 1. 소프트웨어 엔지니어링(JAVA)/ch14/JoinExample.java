package ch14;

public class JoinExample {

	public static void main(String[] args) {

		SumThread sumThread = new SumThread();

		sumThread.start();

		try {
			Thread.sleep(1000); // main thread sleep.
//			sumThread.join(); // main thread 정지.
		} catch (InterruptedException e) {
		}

		System.out.println("1~100 합: " + sumThread.getSum());

	}

}

