package ch05;

public class ArrayTest2 {

	public static void main(String[] args) {

		int [][] iArr;
		iArr = new int[2][3];
		System.out.println(iArr[0][0]);

		int iArr2 [][] = {{1,2}, {3,4,5}, {6,7,8,9}};

		int [] iArr3 [] = new int[2][];
		iArr3[0] = new int[2];
		iArr3[1] = new int[4];

		// ===========================================

		int [][][] iArr3D = new int[2][][];

		iArr3D[0] = new int[3][];
		iArr3D[0][0] = new int[2]; iArr3D[0][1] = new int[2]; iArr3D[0][2] = null;

		iArr3D[1] = new int[2][];
		iArr3D[1][0] = new int[2]; iArr3D[1][1] = null;

	}

}








