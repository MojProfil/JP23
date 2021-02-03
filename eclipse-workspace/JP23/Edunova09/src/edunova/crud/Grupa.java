package edunova.crud;

public class Grupa {
	
	private int sifra;
	private String naziv;
	private Predavac predavac;
	private Smjer smjer;
	
	public Grupa() {
		super();
	}
	
	public Grupa(int sifra, String naziv, Predavac predavac, Smjer smjer) {
		super();
		this.sifra = sifra;
		this.naziv = naziv;
		this.predavac = predavac;
		this.smjer = smjer;
	}
	
	public Smjer getSmjer() {
		return smjer;
	}
	public void setSmjer(Smjer smjer) {
		this.smjer = smjer;
	}
	public Predavac getPredavac() {
		return predavac;
	}
	public void setPredavac(Predavac predavac) {
		this.predavac = predavac;
	}
	public int getSifra() {
		return sifra;
	}
	public void setSifra(int sifra) {
		this.sifra = sifra;
	}
	public String getNaziv() {
		return naziv;
	}
	public void setNaziv(String naziv) {
		this.naziv = naziv;
	}
	
}
