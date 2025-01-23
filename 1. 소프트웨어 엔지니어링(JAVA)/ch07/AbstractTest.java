package ch07;

public class AbstractTest {

	public static void main(String[] args) {

		AbstractChild1 ch1 = new AbstractChild1();
		AbstractChild2 ch2 = new AbstractChild2();

		AbstractTest test = new AbstractTest();
		test.print(ch1);
		test.print(ch2);

	}

	private void print(AbstractSuper su) { // Polymorphic Argument
		su.print();
	}

	private void name(AbstractSuper su) {
		if(su instanceof AbstractChild1) {
			AbstractChild1 ch1 = (AbstractChild1) su;
			ch1.empPrint();
		} else if(su instanceof AbstractChild1) {
			AbstractChild2 ch2 = (AbstractChild2) su;
			ch2.patientPrint();
		}
	}

	private void name(AbstractChild1 su) {
		su.empPrint();
	}

	private void name(AbstractChild2 su) {
		su.patientPrint();
	}

}
