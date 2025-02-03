package ch15;

public class TreeMapObj implements Comparable<TreeMapObj> {

	public Integer key;

	public TreeMapObj(Integer key) {
		this.key = key;
	}

	@Override
	public int compareTo(TreeMapObj injectObj) {
		return this.key.compareTo(injectObj.key);
	}

	@Override
	public String toString() {
		return key.toString();
	}

}
