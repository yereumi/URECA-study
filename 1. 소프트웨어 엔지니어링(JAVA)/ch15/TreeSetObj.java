package ch15;

public class TreeSetObj implements Comparable<TreeSetObj> {

	public Integer iNum;

	public TreeSetObj(int iNum) {
		this.iNum = iNum;
	}

	@Override
	public int compareTo(TreeSetObj injectObj) {
		return this.iNum.compareTo(injectObj.iNum);
//		if(this.iNum > injectObj.iNum) {
//			return 1;
//		} else if(this.iNum < injectObj.iNum) {
//			return -1;
//		}
//		return 0;
	}

	@Override
	public String toString() {
		return iNum.toString();
	}

}
