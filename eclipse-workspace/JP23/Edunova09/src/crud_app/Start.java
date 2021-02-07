package crud_app;
import java.io.File;
import java.io.FileWriter;
import java.io.IOException;
import java.lang.reflect.Type;
import java.nio.file.Files;
import java.nio.file.Path;
import java.util.ArrayList;
import java.util.List;
import com.google.gson.Gson;
import com.google.gson.reflect.TypeToken;

import edunova.crud.Smjer;

public class Start {
	
			
	private static final String PUTANJA_NALOZI="nalozi.json";
			
	private List<Roba> roba;
	private List<Usluga> usluge;
	private List<RadniNalog> radniNalozi;
	private List<Kupac> kupci;
	private List<Vozilo> vozila;
	
	Roba goods = new Roba();
	Usluga services = new Usluga();
	RadniNalog rn = new RadniNalog();
	Kupac buyer = new Kupac();
	Vozilo vehicle = new Vozilo();
	
	
	
	
	public Start() {
		roba = new ArrayList<>();
		usluge = new ArrayList<>();
		radniNalozi = new ArrayList<>(); 
		kupci = new ArrayList<>();
		vozila = new ArrayList<>();
		izbornik();
		ucitajNaloge();
	}
	
	
	
//	***** IZBORNIK *****	//
	
	private void izbornik() {
		System.out.println("******* Glavni izbornik *********");
		stavkeIzbornika();
		switch (Metode.ucitajCijeliBroj("Odaberite akciju",1,5)) {
		case 1:
			radSaNalozima();
			break;
		case 2:
			radSaVozilima();
			break;
		case 5:
			System.out.println("Doviđenja");
			break;
		}
	}



	private void stavkeIzbornika() {
		System.out.println("1. Radni nalozi");
		System.out.println("2. Vozila");
		System.out.println("3. Kupci");
		System.out.println("4. Izaz");	
	}
	
//	***** RADNI NALOG ***** //
	
	private void stavkeRadniNalog() {
		System.out.println("1. Novi radni nalog");
		System.out.println("2. Pregled radnih naloga");
		System.out.println("3. Obriši radni nalog");
		System.out.println("4. Izlaz");	
	}
	
	private void radSaNalozima() {
		stavkeRadniNalog();
		
		switch (Metode.ucitajCijeliBroj("Odabir", 1, 4)) {
		case 1:
			noviRadniNalog();
			break;
		case 2:
			prikaziRadniNalog();
			break;
		case 3:
			obrisiRadniNalog();
			break;
		case 4:
			izbornik();
			break;
		}
}

	private void noviRadniNalog() {
		rn.setSifra(Metode.ucitajCijeliBroj("Šifra radnog naloga"));
		rn.kupac.setImeKupca(Metode.ucitajString("Ime kupca"));
		rn.kupac.setPrezimeKupca(Metode.ucitajString("Prezime kupca"));
		rn.kupac.setKontakt(Metode.ucitajString("Kontakt broj"));
		rn.vozilo.setMarka(Metode.ucitajString("Marka vozila"));
		rn.vozilo.setModel(Metode.ucitajString("Model vozila"));
		radniNalozi.add(rn);
		kupci.add(rn.kupac);
		vozila.add(rn.vozilo);
		spremiNalog();
		radSaNalozima();
	}
	private void prikaziRadniNalog() {
		for (RadniNalog rn : radniNalozi) {
			System.out.println(rn.getSifra() + ". " +"Kupac: " + rn.kupac.getImeKupca() + " " + rn.kupac.getPrezimeKupca() + 
					"   \nVozilo: " + rn.vozilo.getMarka() + rn.vozilo.getModel() + "\n");
		}
		radSaNalozima();
	}
	
	private void obrisiRadniNalog() {
		for (RadniNalog rn : radniNalozi) {
			System.out.println(rn.getSifra() + ". " +"Kupac: " + rn.kupac.getImeKupca() + " " + rn.kupac.getPrezimeKupca() + 
					"   \nVozilo: " + rn.vozilo.getMarka() + rn.vozilo.getModel() + "\n");
		}
		int x = Metode.ucitajCijeliBroj("Odabir šifre radnog naloga");
				radniNalozi.remove(x);
	}
	
//	***** VOZILA *****	//
	
	private void radSaVozilima() {
		stavkeVozila();
		switch(Metode.ucitajCijeliBroj("Odabir", 1, 3)) {
			case 1: 
				prikazVozila();
				break;
			case 2: 
				obrisiVozilo();
				break;
			case 3:
				radSaVozilima();
				break;
			case 4:
				izbornik();
				break;
	}
}
	
	private void stavkeVozila() {
		System.out.println("Prikaz vozila");
		System.out.println("Obriši vozilo");
		System.out.println("Povratak u prethodni izbornik");
		System.out.println("Povratak u glavni izbornik");
	}
	
	private void prikazVozila() {
		int i = 1;
		System.out.println("Prikaz unesenih vozila: ");
		System.out.println();
		for(RadniNalog rn : radniNalozi) {
			System.out.println((i++) + rn.vozilo.getMarka() + " " + rn.vozilo.getModel() + "\n");
		}
}
	
	private void obrisiVozilo() {
		prikazVozila();
		int x = Metode.ucitajCijeliBroj("Odabir vozila za brisanje");
		vozila.remove(x);
}
	
//	***** Save&load GSON methods ****** //
	
	private void spremiNalog() {
		Gson gson = new Gson();
		
		FileWriter fw;
		try {
			fw = new FileWriter(new File("PUTANJA_NALOZI.json"));
			fw.write(gson.toJson(radniNalozi));
			fw.close();
		} catch (IOException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}
	} 
	
	private void ucitajNaloge() {
		if(!new File(PUTANJA_NALOZI).exists()) {
			return;
		} else {
			try {
				Type listType = new TypeToken<List<Smjer>>(){}.getType();
				String json=Files.readString(Path.of(PUTANJA_NALOZI));
				radniNalozi = new Gson().fromJson(json, listType);
				}catch(Exception e) {
				e.printStackTrace();
				// obvijestiti korisnika
				}
		}
	}

	
	public static void main(String[] args) {
		// TODO Auto-generated method stub
		new Start();
	}

}
