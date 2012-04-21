package ee.itcollege.android.calculator;

import java.util.Stack;

public class Calculator {

	private Stack<Double> stack = new Stack<Double>();

	public void addNumber(Double number) {
		stack.add(number);
	}

	public int size() {
		return stack.size();
	}

	/**
	 * 
	 * @param operation
	 * @return
	 */
	public Double performOperation(String operation) {

		if (stack.size() < 2) {
			return -1.0; // Error code
		}

		Double op1 = stack.pop();
		Double op2 = stack.pop();

		if (operation.equals("+")) {
			return op1 + op2;
		} else if (operation.equals("-")) {
			return op2 - op1;
		} else if (operation.equals("/")) {
			return op2 / op1;
		} else {
			return op1 * op2;
		}
	}

	public void reset() {
		stack.clear();
	}
}
