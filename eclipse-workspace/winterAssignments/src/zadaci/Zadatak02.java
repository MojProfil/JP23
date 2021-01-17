package zadaci;

public class Zadatak02 {

	public static void main(String[] args) {
		// Kreirati program koji ispisuje tablicu množenja 15x15 lijepo formatiranu
		
		for(int i=0; i<15; i++) {
			for(int j=0; j<15; j++) {
				System.out.printf("%4d", (i+1)*(j+1));
			}
			System.out.println(" ");
		}

	}

}
