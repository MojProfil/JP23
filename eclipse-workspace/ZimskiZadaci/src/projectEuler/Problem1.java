package projectEuler;

public class Problem1 {

	public static void main(String[] args) {
//		Find the sum of all the multiples of 3 or 5 below 1000.
		
		int initValue = 1000;
		int count = 0;
		for(int i = 0; i<initValue; i++) {
			if(i%3==0 || i%5==0) {
				count+=i;
				System.out.println(i);
			}
		}
		System.out.println("Sum of all multiples: " + count);
	}

}
