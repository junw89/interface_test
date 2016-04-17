#Author: Jun Wang
#Keywords Summary : The following test cases have been implemented by using BDD Cucumber framework.

Feature: Verify the interface twolargest()
	This feature file test_twolargest_number.feature includes the following test cases:
	1. Verify the input array with elements type - integer 
	2. Verify the input array elements - one integer element value 1
	3. Verify the input array elements - one integer element value 0
	4. Verify the input array elements - one integer element value -1 
	5. Verify the input array elements - 2 integer elements value [0, 1]
	6. Verify the input array elements - 2 integer elements value [0, -1]
	7. Verify the input array elements - 2 integer elements value [-1, -2]
	8. Verify the input array elements - 2 integer elements value [1, -2]
	9. Verify the input array elements - multiple integer numbers. Such as [0, 1, -2, -4, 7, -9]
	

Scenario: Verify the input array with elements type - integer  
	When Input an array 
		| 1	|
		| 2	|
		| 3	|
		| 4	|
		| 5	|
	Then The two largest numbers in the array are
		|	5 |
		|	4	|
	
Scenario: Verify the input array elements - one integer element value 1
	When Input an array 
		| 1	|
	Then The input array requests the minimum two elements		
	
Scenario: Verify the input array elements - one integer element value 0
	When Input an array 
		| 0	|
	Then The input array requests the minimum two elements
	
Scenario: Verify the input array elements - one integer element value -1
	When Input an array 
		| -1	|
	Then The input array requests the minimum two elements

Scenario: Verify the input array elements - 2 integer elements value [0, 1]
	When Input an array 
		| 0	|
		| 1 |
	Then The two largest numbers in the array are
		|	1 |
		|	0	|
						
	Scenario: Verify the input array elements - 2 integer elements value [0, -1]
	When Input an array 
		| 0	 |
		| -1 |
	Then The two largest numbers in the array are
		|	0 	|
		|	-1	|
					
Scenario: Verify the input array elements - 2 integer elements value [-1, -2]
	When Input an array 
		| -1	|
		| -2	|
	Then The two largest numbers in the array are
		|	-1	|
		|	-2	|						
	
Scenario: Verify the input array elements - 2 integer elements value [1, -2]
	When Input an array 
		|  1	|
		| -2	|
	Then The two largest numbers in the array are
		|	1		|
		|	-2	|						

Scenario: Verify the input array elements - multiple integer numbers. Such as [0, 1, -2, -4, 7, -9]
	When Input an array 
		|	 0	|
		|  1	|
		| -2	|
		| -4	|
		|  7	|
		| -9	|
	Then The two largest numbers in the array are
		|	7	|
		|	1	|
		