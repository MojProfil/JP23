package zadaci;

import java.util.Scanner;

public class Zadatak1 {

	public static void main(String[] args) {
		// Kreirati program koji unosi 24 broja, 
		// ispisuje njihov zbroj, najmanji i  najveći uneseni broj.
		
		Scanner scan = new Scanner(System.in);
		int[] list = new int[5];
		int min = list[0];
		int max = list[0];
		int counter = 0;
		
		
		
//		pohrana u listu
		
		for(int i=1; i < list.length; i++) {
			System.out.println("Enter number " + (i) + ": ");
			list[i] = scan.nextInt();
			counter+=list[i];
			if(list[i] < min) {
				min = list[i];
			} else {
				max = list[i];
			}
		}
		scan.close();
		System.out.println("Sum of entered nubmers is: " + counter);
		System.out.println("Minimum entered value in array list is : " + min); // error - daje uvijek 0, popraviti
		System.out.println("Maximum entered value in array list is : "+ max);
		
		
	}
}


