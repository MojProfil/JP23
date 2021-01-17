package zadaci;

public class PE01 {

	public static void main(String[] args) {
		// If we list all the natural numbers below 10 that are multiples of 3 or 5, 
		// we get 3, 5, 6 and 9. The sum of these multiples is 23.
		//	Find the sum of all the multiples of 3 or 5 below 1000.
		
		int count = 0;
		for(int i=0; i<1000; i++) {
			if(i%3 == 0 || i%5 == 0) {
				count+=i;
				System.out.println(i);
			}
		}
		System.out.println("Sum of numbers below 1000: " + count);
	}

}
