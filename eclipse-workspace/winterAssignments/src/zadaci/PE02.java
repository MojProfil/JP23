package zadaci;

public class PE02 {
	
	public static void main(String[] args) {
//		Even Fibonacci numbers 
//		By considering the terms in the Fibonacci sequence whose values 
//		do not exceed four million, find the sum of the even-valued terms.
		
		int num1 = 0, num2 = 1, num3 = 0;
		
		int count = 0;
		for(int i = 0; i<1000; i++) {
			if(num3 >= 4000000) {
				break;
			} else {
				num3=num1+num2;
				System.out.println(num3 + " ");
				num1 = num2;
				num2 = num3;
				count+=num3;
			}
		}
		System.out.println("Count of values is: " + count);
	}

}
