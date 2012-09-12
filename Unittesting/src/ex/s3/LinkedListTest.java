package ex.s3;

import static java.util.Arrays.asList;

import java.util.Arrays;

import org.junit.Test;
import static org.hamcrest.CoreMatchers.*;
import static org.junit.Assert.*;

public class LinkedListTest {

	@Test
	public void linkedList() throws Exception {
		LinkedList list = new LinkedList();
		list.add(1);
		list.add(2);
		list.add(3);

		assertThat(list.asArrayList(), is(asList(1,2,3)));

		System.out.println(list.head);

		assertThat(list.remove(), is(3));

		assertThat(list.asArrayList(), is(asList(1,2)));

		assertThat(list.remove(), is(2));
		assertThat(list.remove(), is(1));

		assertThat(list.asArrayList(), is(Arrays.<Integer>asList()));
	}
}
