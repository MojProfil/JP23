package edunova.pojasnjenje;

public class Start {

	Start(){
		System.out.println(StaticnaKlasa.odradiPosao());
		
		Racun r = new Racun();
		
		Racun[] niz = new Racun[2];
		r.setKupac("Edunova");
		
		r=new Racun();
		r.setKupac("Biroprint");
		
		niz[0]=r;
		niz[1]=r;
	
		
	}
	
	public static void main(String[] args) {
		new Start();
	}

}
