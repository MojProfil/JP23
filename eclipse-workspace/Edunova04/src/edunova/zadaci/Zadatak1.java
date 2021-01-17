package edunova.zadaci;

import java.util.Scanner;

public class Zadatak1 {

	// Program unosi brojeve sve dok ne dođe broj -1
	//Program ispisuje sumu svih unesenih bojeva
	
	public static void main(String[] args) {
		
		Scanner scan = new Scanner(System.in);
	
		System.out.println("Enter number: ");
		int i = scan.nextInt();
		scan.close();
		
		int counter = 0;
		if(i > 0) {
			for(int a = i; a >= -1; a--) {
				System.out.println(a);
				counter+=a;
			}
		} else if (i < 0) {
			for(int a = i; a <= -1; a++) {
				System.out.println(a);
				counter-=a;
			}
		}
		System.out.println(counter);
	
	}
}

