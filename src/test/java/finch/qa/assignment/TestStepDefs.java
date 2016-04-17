package finch.qa.assignment;

import finch.qa.Assignment.Main;

import cucumber.api.java.en.Then;
import cucumber.api.java.en.When;

import static org.hamcrest.core.Is.is;
import static org.junit.Assert.assertThat;

import java.util.List;

public class TestStepDefs {
	private int[] numbers;
	private int[] largest2;
	
	@When("^Input an array$")
	public void input_an_array(List<Integer> array) throws Throwable {
	    this.numbers = new int[array.size()];
	    int i = 0;
	    for (Integer val : array) { this.numbers[i++] = val; }
	}
	
	@Then("^The \"(.*?)\" is the largest number in the array$")
	public void the_is_the_largest_number_in_the_array(String largest_number) throws Throwable {
		assertThat(Integer.parseInt(largest_number), is(Main.largest(numbers)));
	}
	
	@Then("^The two largest numbers in the array are$")
	public void the_two_largest_numbers_in_the_array_are(List<Integer> array) throws Throwable {
		this.largest2 = new int[array.size()];
	    int i = 0;
	    for (Integer val : array) { this.largest2[i++] = val; }
	    
	    assertThat(this.largest2, is(Main.twoLargest(numbers)));
	}
	
	@Then("^The input array requests the minimum two elements$")
	public void the_input_array_requests_the_minimum_two_elements() throws Throwable {
		assertThat(2, is(numbers.length));
	}
}
