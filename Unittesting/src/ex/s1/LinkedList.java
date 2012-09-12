package ex.s1;

import java.text.MessageFormat;
import java.util.ArrayList;
import java.util.List;

public class LinkedList {

	/* public only during development */
	public Node head = null;
	public Node tail = null;

	public LinkedList() {
		head = tail = new Node(null, null, null);
	}


	public void add(Integer i) {
		tail.next = new Node(i, head, null);
		tail.next.previous = tail;
		tail = tail.next;
	}

	public List<Integer> asArrayList() {
		List<Integer> list = new ArrayList<Integer>();
		Node runner = head.next;
		while (runner != null) {
			list.add(runner.data);
			runner = runner.next;
		}

		return list;
	}

	public Integer remove() {
		if (head == tail) {
			throw new IllegalStateException("list is empty");
		}

		Integer retval = tail.data;

		tail.previous.next = null;
		tail = tail.previous;

		return retval;
	}

	private class Node {
		private Integer data;
		private Node next;
		private Node previous;

		public Node(Integer data, Node previous, Node next) {
			this.data = data;
			this.previous = previous;
			this.next = next;
		}
		@Override
		public String toString() {
			return MessageFormat.format("[{0}, {1}]", data, next);
		}
	}
}