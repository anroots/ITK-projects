package ex.s1;

import org.junit.Before;
import org.junit.Test;
import static org.hamcrest.CoreMatchers.*;
import static org.junit.Assert.*;

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
}
