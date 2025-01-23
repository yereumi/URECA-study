package ch12;

public class WrapperTest {

	public static void main(String[] args) {

		String intStr = "100";
		String floatStr = "3.14";
		System.out.println( intStr + 5 );
		System.out.println( floatStr + 2.0 );
		System.out.println( Integer.parseInt(intStr) + 5 );
		System.out.println( Double.parseDouble(floatStr) + 2.0 );

		Integer iWrap1 = 7;
		Integer iWrap2 = 7;
		Integer iWrap3 = new Integer(7); // deprecated
		System.out.println(iWrap1 == iWrap2); // true
		System.out.println(iWrap1 == iWrap3); // false
		System.out.println( iWrap1.equals(iWrap3) ); // true
		System.out.println(iWrap1 + iWrap2);

		int iVar = iWrap1;
		System.out.println(iVar);
	}

}
