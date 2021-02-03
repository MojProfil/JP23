package edunova.liste;

import java.util.ArrayList;
import java.util.List;

public class Start {
	
	public Start() {
//		pohrana samo 2 stringa
//		String[] imena = new String[2];
//		imena[0]="Ana";
//		imena[1]="Marko";
//		imena[2]="Karlo";
		
//		LOŠ pristup:
		ArrayList lista = new ArrayList();
		lista.add(new Osoba("Ana"));
		lista.add(new Osoba("Ana"));
		lista.add(new Osoba("Karlo"));
		
		System.out.println(lista.get(1));
		System.out.println(lista.get(0));
//		isti hashcode, baca false:
		System.out.println(lista.get(0).equals(lista.get(1)));
		
//		korištenje generičkih klasa:
//		DOBAR pristup:
		List<Osoba> l = new ArrayList<>();
		l.add(new Osoba("Ana"));
		
	}
	

	public static void main(String[] args) {
		new Start();
	}

}
