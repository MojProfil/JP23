package edunova.zadaci;

import java.util.Scanner;

public class Zadatak1 {

	public static void main(String[] args) {
		// Program unosi brojeve dok ne dođu do -1
		// Program zbraja sve brojeve
		
		Scanner scan = new Scanner(System.in);
		
		System.out.println("Enter number: ");
		int num = scan.nextInt();
		
		int counter = 0;
		
		if(num > 0) {
			for(int i = num; i >= -1; i--) {
				counter+=i;
				System.out.println(i);
			}
		} else if(num < 0) {
				for(int i = num; i <= -1; i++) {
					counter-=i;
			}
		}
		System.out.println(counter);
	}
}
