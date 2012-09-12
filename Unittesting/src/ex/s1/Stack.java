package ex.s1;

/**
 * 
 * @author Ando Roots
 *
 */
public class Stack {

	/**
	 * Justification for using a fixed-size stack: assignment did not allow the
	 * usage of Lists and did not specify that the Stack must support infinite
	 * members.
	 */
	private Integer dataStructure[] = new Integer[100];

	/**
	 * Essentially the length of the array
	 */
	private int topIndex;

	/**
	 * Add element
	 * @param i
	 */
	public void push(Integer i) {
		dataStructure[++topIndex] = i;
	}

	/**
	 * Remove element
	 * @return
	 */
	public Integer pop() {
		if (topIndex == 0) {
			throw new IllegalStateException();
		}
		topIndex--;
		return dataStructure[topIndex + 1];
	}

	/**
	 * Look at topmost element, do not remove
	 * @return
	 */
	public Integer peek() {
		if (topIndex == 0) {
			throw new IllegalStateException();
		}
		return dataStructure[topIndex];
	}

	/**
	 * Get current size
	 * @return
	 */
	public Integer size() {
		return topIndex;
	}
}
