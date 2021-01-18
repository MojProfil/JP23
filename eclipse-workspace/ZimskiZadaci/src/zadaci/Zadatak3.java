package zadaci;

import java.util.Scanner;

public class Zadatak3 {

	public static void main(String[] args) {
//		Kreirati program koji za dva unesena broja 
//		ispisuje sve prim/prosti/prime brojeve između njih.
		
		Scanner scan = new Scanner(System.in);
		
		System.out.println("Unesi broj a: ");
		int numOne = scan.nextInt();
		System.out.println("Unesi broj b: ");
		int numTwo = scan.nextInt();
		
		
		System.out.println("Prosti brojevi su: ");
		for(int i = numOne; i<numTwo; i++) {
			int count = 0;
			for(int j = 2; j<i; j++) {
				if(i%j==0) {
					count++;
				}
			}
			if(count==0) {
				System.out.print(i + " ");
			}
		}
		
		
	}
}
