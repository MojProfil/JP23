package edunova;

import java.util.Scanner;

public class UlazPodatakaScanner {
	
	public static void main(String[] args) {
		// ne znamo značenje pa ćemo koristiti kako je navedeno
		Scanner ulaz = new Scanner(System.in);
		
		System.out.print("Unesi broj: ");
		int i = ulaz.nextInt();
		
		System.out.println(i);
		
		ulaz.close();
		
	}

}
