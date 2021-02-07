package crud_app;

import java.util.List;

public class RadniNalog {

	private int sifra;
	Kupac kupac = new Kupac();
	Vozilo vozilo = new Vozilo();
	
	public int getSifra() {
		return sifra;
	}

	public void setSifra(int sifra) {
		this.sifra = sifra;
	}

	public RadniNalog() {
		super();
		this.kupac = kupac;
		this.sifra = sifra;
	}

	public Kupac getKupac() {
		return kupac;
	}

	public void setKupac(Kupac kupac) {
		this.kupac = kupac;
	}
	
	
	
	
	

}
