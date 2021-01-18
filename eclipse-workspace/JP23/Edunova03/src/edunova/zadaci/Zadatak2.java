package edunova.zadaci;

import java.util.Scanner;

public class Zadatak2 {
	
	public static void main(String[] args) {
		// Program unosi dva cijela broja.
		// Program ispisuje OK ako je zbroj svih parnih brojeva
		// između ta dva cijela broja
		// veći od 1000 
		
		Scanner scan = new Scanner(System.in);
		System.out.println("Enter first number: ");
		int num1 = scan.nextInt();
		System.out.println("Enter second number: ");
		int num2 = scan.nextInt();
		
		int count = 0;
		for(int i = num1; i<num2; i++) {
			count+=i;
			if((i%2==0) && (count>1000)) {
				System.out.println("OK");
			}
		}
		
		
	}
}
