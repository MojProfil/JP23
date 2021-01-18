package projectEuler;

public class Problem2 {

	public static void main(String[] args) {
//		By considering the terms in the Fibonacci sequence 
//		whose values do not exceed four million, find the sum of the even-valued terms.
		
		int num1=1, num2=1, num3=0;
		int count = 0;
		
		while(num3<4000000) {
			num3 = (num1+num2);
			if(num3%2==0) {
				count+=num3;
			}
			num1=num2;
			num2=num3;
		}
		System.out.println(count);
		
		
	}

}
