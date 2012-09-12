package ex.s1;

import org.junit.After;
import org.junit.Before;
import org.junit.Test;
import static org.hamcrest.CoreMatchers.*;
import static org.junit.Assert.*;

/**
 * 
 * @author Ando Roots
 *
 */
public class StackTest {

	private Stack stack;

	@Before
	public void before() {
		stack = new Stack();
	}

	@Test
	public void create_stack_isEmpty() {
		assertThat(stack.size(), is(0));
	}

	@Test
	public void push_two_containsTwo() {
		stack.push(3);
		stack.push(5);
		assertThat(stack.size(), is(2));
	}

	@Test
	public void push_twoRemoveTwo_containsZero() {
		stack.push(3);
		stack.push(5);
		stack.pop();
		stack.pop();
		assertThat(stack.size(), is(0));
	}

	@Test
	public void push_twoRemoveTwo_elementsMatch() {
		int one = 5;
		int two = -8;
		stack.push(one);
		stack.push(two);

		assertThat(stack.pop(), is(two));
		assertThat(stack.pop(), is(one));
	}

	@Test
	public void push_two_topmostMatches() {
		stack.push(6);
		stack.push(87);
		assertThat(stack.peek(), is(87));
	}

	@Test
	public void push_twoAndPeek_containsTwo() {
		stack.push(-76);
		stack.push(874);
		assertThat(stack.peek(), is(874));
		assertThat(stack.size(), is(2));
	}

	@Test
	public void push_twoPeekTwice_peeksMatch() {
		stack.push(0);
		stack.push(104);

		int peek1 = stack.peek();
		int peek2 = stack.peek();

		assertThat(peek1, is(peek2));
	}

	@Test(expected = IllegalStateException.class)
	public void create_tryPop_throws() {
		stack.pop();
	}

	@Test(expected = IllegalStateException.class)
	public void create_tyPeek_throws() {
		stack.peek();
	}

	@After
	public void after() {
		stack = new Stack();
	}
}
