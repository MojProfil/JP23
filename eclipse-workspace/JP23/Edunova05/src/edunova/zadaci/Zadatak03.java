package edunova.zadaci;

import java.util.Scanner;

public class Zadatak03 {

//	kreirajte metodu naziva ucitajBroj
//	beskonačno traži unos
//	dok korisnik ne unese broj veći od 0
//	nakon toga metoda vraća unesenu vrijednost onome koji je pozvao
	
	public static void main(String[] args) {
		
		Zadatak03.ucitajBroj();
		
	}
	public static void ucitajBroj() {
		Scanner scan = new Scanner(System.in);
		System.out.println("Unesi broj: ");
		int num = scan.nextInt();
		int count = 0;
		
		while(num<=0) {
			System.out.println("Unesi broj: ");
			num = scan.nextInt();
			count++;
		}
		System.out.println("Broj je : " + num);
	}
}


