package ch14;

public class BreadShop {

	// 빵 갯수, breadNo == 0 -> setBread 수행, breadNo > 0 buyBread 수행.
	private int breadNo = 0;

	public synchronized void setBread( int breadNoByBaker ) { // baker 수행.
		if(breadNo != 0) {
			try {
				System.out.println( "빵 있음. 제빵사는 휴식. : "
						+ Thread.currentThread().getName() );
				this.wait(); // baker wait.
			} catch (InterruptedException e) {
				e.printStackTrace();
			}
		} else {
			breadNo = breadNoByBaker;
			System.out.println( "빵 들어 왔다고 알림. : "
						+ Thread.currentThread().getName() );
			notifyAll();
		}
	} // setBread

	public synchronized void buyBread() { // customer 수행.
		if(breadNo == 0) {
			System.out.println( "빵이 없음. 빵을 사려고 줄을 선다. customer wait. : "
						+ Thread.currentThread().getName() );
			try {
				this.wait(); // customer wait.
			} catch (InterruptedException e) {
				e.printStackTrace();
			}
		} else {
			System.out.println( "빵을 샀어요. : "
						+ Thread.currentThread().getName() );
			breadNo = 0;
			notifyAll();
		}
	} // buyBread

	public static void main(String[] args) {
		BreadShop shop = new BreadShop();

		BreadBaker baker = new BreadBaker("파리바", shop);
		baker.start();

		BreadCustomer customer = new BreadCustomer("고객1", shop);
		customer.start();
	}

} // class







