package zadaci;

import java.util.Scanner;

public class Zadatak2 {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		
		Scanner scanner = new Scanner(System.in);
		
		int a = scanner.nextInt();
		int b = scanner.nextInt();
		
		int zbroj = 0;
		for(int i=a; i<b; i++) {
			if(a%2==0) {
				zbroj+=a;
			}
		}
		if(zbroj>1000) {
			System.out.println("OK");
		}
	}
}
	
