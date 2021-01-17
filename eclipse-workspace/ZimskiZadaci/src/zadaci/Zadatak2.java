package zadaci;

import java.util.Scanner;

public class Zadatak2 {

	public static void main(String[] args) {
//		Kreirati program koji ispisuje tablicu množenja 15x15 lijepo formatiranu
		
//		update: korisnik unosi velicinu tablice
		
		Scanner scan = new Scanner(System.in);
		
		System.out.println("Enter the size of X axis: ");
		int x = scan.nextInt();
		
		System.out.println("Enter the size of Y axis: ");
		int y = scan.nextInt();
		
		scan.close();
		
		int[][] table = new int[x][y];
		
		for(int i=0; i<table.length; i++) {
			for(int j=0; j<table.length; j++) {
				System.out.printf("%4d", ((i+1)*(j+1)));
			}
			System.out.println();
			}
		}
		
	}


