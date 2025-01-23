package ch02;

/*
 * Data Type Casting
 * - Promotion(묵시적/자동적 형태 변환) : 작은 Data Type을 큰 Data Type으로 옮길 때.
 * - Demotion(명시적/강제적 형태 변환) : 큰 Data Type을 작은 Data Type으로 옮길 때.
 */

public class CastingTest {

	public static void main(String[] args) {

		byte bVar = 127;
		int iVar = bVar; // Promotion(묵시적/자동적 형태 변환)
		System.out.println("bVar : " + bVar);
		System.out.println("iVar : " + iVar);

		int iVar2 = 127;
		iVar2 = 128;
		iVar2 = 129;
		iVar2 = 130;
		byte bVar2 = (byte) iVar2; // Demotion(명시적/강제적 형태 변환)
		System.out.println("bVar2 : " + bVar2);
		System.out.println("iVar2 : " + iVar2);

		int iVar3 = 999999999;
		double dVar3 = iVar3;
		System.out.println("iVar3 : " + iVar3);
		System.out.println("dVar3 : " + dVar3);

		double dVar4 = 9.123456789;
		int iVar4 = (int) dVar4;
		System.out.println("iVar4 : " + iVar4);
		System.out.println("dVar4 : " + dVar4);

		char chVar = 'Z';
		System.out.println("chVar : " + chVar);
		System.out.println("(byte)chVar : " + (byte)chVar);

		int iVar5 = chVar;
		System.out.println("iVar5 : " + iVar5);

		char chVar2 = (char) iVar5;
		System.out.println("chVar2 : " + chVar2);

		byte bVar6 = 7, bVar7 = 8;
		int iVar7 = bVar6 + bVar7;
		byte bVar8 = (byte) (bVar6 + bVar7);

		float fVar1 = 99.9F, fVar2 = 3.14f;
		float fVar3 = fVar1 + fVar2;
		System.out.println("fVar3 : " + fVar3);

		long lVar = 999999L, lVar2 = 777777l;
	}

}









