package edunova.FloraFauna;

public class Animals extends NaturePark {

	private String typeOfAnimal;
	private boolean hasLegs;
	private boolean makingSounds;
	private int averageLifetime;
	
	public int getAverageLifetime() {
		return averageLifetime;
	}
	public void setAverageLifetime(int averageLifetime) {
		this.averageLifetime = averageLifetime;
	}
	public String getTypeOfAnimal() {
		return typeOfAnimal;
	}
	public void setTypeOfAnimal(String typeOfAnimal) {
		this.typeOfAnimal = typeOfAnimal;
	}
	public boolean isHasLegs() {
		return hasLegs;
	}
	public void setHasLegs(boolean hasLegs) {
		this.hasLegs = hasLegs;
	}
	public boolean isMakingSounds() {
		return makingSounds;
	}
	public void setMakingSounds(boolean makingSounds) {
		this.makingSounds = makingSounds;
	}
	
	
}
