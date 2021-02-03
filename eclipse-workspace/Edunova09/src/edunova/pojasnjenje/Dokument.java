package edunova.pojasnjenje;

import java.util.Date;
//	vrhovna klasa
public class Dokument {
	
	private Date datumKreiranja;

	
//	napravljen konstruktor i stavljen datum "sada"
	public Dokument(Date datumKreiranja) {
		super();
		this.datumKreiranja = new Date();
	}

	public Date getDatumKreiranja() {
		return datumKreiranja;
	}

	public void setDatumKreiranja(Date datumKreiranja) {
		this.datumKreiranja = datumKreiranja;
	}

}
