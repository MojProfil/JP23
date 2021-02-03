package edunova.crud;

import java.util.ArrayList;
import java.util.List;

public class Start {
	
	private List<Smjer> smjerovi;
	private List<Grupa> grupe;
	
	public Start() {
		smjerovi= new ArrayList<>();
		grupe = new ArrayList<>();
		izbornik();
	}

//	1
	private void izbornik() {
		System.out.println("******* EDUNOVA CRUD *********");
		stavkeIzbornika();
		switch (Pomocno.ucitajCijeliBroj("Odaberite akciju",1,5)) {
		case 1:
			smjerIzbornik();
			break;
		case 2:
			stavkeGrupaIzbornika();
			break;
		case 5:
			System.out.println("Doviđenja");
			break;
		}
	}
//
	private void stavkeIzbornika() {
		System.out.println("1. Smjerovi");
		System.out.println("2. Grupe");
		System.out.println("3. Polaznici");
		System.out.println("4. Predavači");
		System.out.println("5. Izaz");	
	}

								//		**************SMJER*******************			//
	
	private void smjerIzbornik() {
		System.out.println("Rad s smjerovima");
		stavkeSmjerIzbornika();
		switch(Pomocno.ucitajCijeliBroj("Odaberite akciju", 1, 5)) {
		case 1:
			prikaziSmjerove();
			break;
		case 2:
			dodajNoviSmjer();
			break;
		case 3:
			promjeniSmjer();
			break;
		case 4:
			obrisiSmjer();
			break;
		case 5:
			izbornik();
			break;
		}		
	}
//	
	private void stavkeSmjerIzbornika() {
		System.out.println("1. Prikaži sve smjerove");
		System.out.println("2. Dodaj novi smjer");
		System.out.println("3. Promjeni postojeći smjer");
		System.out.println("4. Obriši postojei smjer");
		System.out.println("5. Vraćanje na glavni izbornik");
}
//
	private void prikaziSmjerove() {
		System.out.println();
		for (Smjer smjer : smjerovi) {
			System.out.println(smjer.getNaziv());
		}
		System.out.println();
		smjerIzbornik();
	}
//	
	private void dodajNoviSmjer() {
		Smjer s = new Smjer();
		s.setSifra(Pomocno.ucitajCijeliBroj("Unesi šifru smjera"));
		s.setNaziv(Pomocno.ucitajString("Unesi naziv smjera"));
		smjerovi.add(s);
		smjerIzbornik();
	}
//	
	private void promjeniSmjer() {
		System.out.println("Izaberite smjer");
		prikaziSmjerove();
}
//  
	private void obrisiSmjer() {
		for (Smjer smjer : smjerovi) {
			System.out.println(smjer.getNaziv());
		}
		int x = Pomocno.ucitajCijeliBroj("Odabir smjera za brisanje");
		smjerovi.remove(x);
	}
	
					//			*******************GRUPE******************			//

	private void stavkeGrupaIzbornika() {
		System.out.println("1. Prikaži sve grupe");
		System.out.println("2. Dodaj novu grupu");
		System.out.println("3. Promjeni postojeću grupu");
		System.out.println("4. Obriši postojeću grupu");
		System.out.println("5. Vraćanje na glavni izbornik");
	}
	
	private void grupaIzbornik() {
		System.out.println("Rad sa grupama");
		System.out.println();
		stavkeGrupaIzbornika();
		switch(Pomocno.ucitajCijeliBroj("Odaberite akciju", 1, 5)) {
		case 1:
			prikaziGrupe();
			break;
		case 2:
			dodajNovuGrupu();
			break;
		case 3:
			promjeniGrupu();
			break;
		case 4:
			obrisiGrupu();
			break;
		case 5:
			izbornik();
			break;
		}		
	}

//
	private void prikaziGrupe() {
			System.out.println();
			for (Grupa grupa : grupe) {
				System.out.println(grupa.getNaziv());
			}
			System.out.println();
			grupaIzbornik();
		}	
//	
	private void dodajNovuGrupu() {
		Grupa g = new Grupa();
		g.setSifra(Pomocno.ucitajCijeliBroj("Unesi šifru grupe"));
		g.setNaziv(Pomocno.ucitajString("Unesi ime grupe"));
		grupe.add(g);
		grupaIzbornik();
	}
//	
	private void promjeniGrupu() {
		System.out.println("Odaberite grupu");
		System.out.println();
		prikaziGrupe();
	}
//	
	private void obrisiGrupu() {
		for (Grupa grupa : grupe) {
			System.out.println(grupa.getNaziv());
		}
		System.out.println("Izaberite grupu za brisanje");
		int x = Pomocno.ucitajCijeliBroj("Odabir grupe za brisanje");
		grupe.remove(x);
}

	
	
	
	
	
	
	
	public static void main(String[] args) {
		new Start();
	}

}
