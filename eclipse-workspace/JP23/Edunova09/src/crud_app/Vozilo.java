package crud_app;

public class Vozilo {

	private String marka;
	private String model;
	private Kupac vlasnik;
	
	
	
	public Kupac getVlasnik() {
		return vlasnik;
	}
	public void setVlasnik(Kupac vlasnik) {
		this.vlasnik = vlasnik;
	}
	public String getMarka() {
		return marka;
	}
	public void setMarka(String marka) {
		this.marka = marka;
	}
	public String getModel() {
		return model;
	}
	public void setModel(String model) {
		this.model = model;
	}
	
	
	
}
