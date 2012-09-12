package lab1;

import org.junit.Before;
import org.junit.Test;
import static org.hamcrest.CoreMatchers.*;
import static org.junit.Assert.*;

public class StringCalculatorTest {

	StringCalculator str;
	
	@Before
	public void setUp(){
		StringCalculator str = new StringCalculator();
	}
	
	
	public void add_emptyString_returnsZero(){
		assertThat(str.add(""),is(0));
	}
	
	public void add_singleNumber_returnsSingleNumber(){
		assertThat(str.add("-854"),is(-854));
		assertThat(str.add("0"),is(0));
		assertThat(str.add("751"),is(751));
	}
	
	public void add_twoNumbers_returnsSum(){
		assertThat(str.add("-95, -2"),is(-97));
		assertThat(str.add("-95, 95"),is(0));
		assertThat(str.add("7, 2"),is(9));
	}

	@Test(expected = IllegalArgumentException.class)
	public void add_null_throws() throws IllegalArgumentException {
		str = new StringCalculator();
		str.add(null);
	}

}