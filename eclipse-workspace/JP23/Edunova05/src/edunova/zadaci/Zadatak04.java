package edunova.zadaci;

public class Zadatak04 {

//	kreirati metodu tipa int
//	naziva suma
//	prima 1 parametar - tipa niz cijelih brojeva int[]
//	metoda vraca sumu svih elemenata primljenog niza
	
//	prikazati poziv metode da ispisani rezultat bude 12
	
	public static void main(String[] args) {
	
		int[] array = {1,2,2,3,4};
		System.out.println(Zadatak04.suma(array));
		
	}
	public static int suma(int arr[]) {
		int count = 0;
		for(int i = 0; i<arr.length; i++) {
			count+=arr[i];
		}
		return count;
	}
}
