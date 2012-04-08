package ee.itcollege.android.calculator;

import java.util.Stack;

public class Calculator {

	
	Stack<Double> stack= new Stack<Double>();
	
	public void addNumber(Double number) {
		stack.add(number);
	}
	
	/**
	 * 
	 * @param operation
	 * @return
	 */
	public Double performOperation(String operation) {
		
		if (stack.size() < 2) {
			return -500.5; // Error code
		}
		
		if (operation.equals("+")) {
			return stack.pop()+stack.pop();
		} else if (operation.equals("-")) {
			return stack.pop()-stack.pop();
		} else if (operation.equals("/")) {
			return stack.pop()/stack.pop();
		} else {
		return stack.pop()*stack.pop();
		}
	}

	public void reset() {
		stack.clear();
	}
}
