package zadaci;

public class Zadatak2 {

	public static void main(String[] args) {
//		Kreirati program koji ispisuje tablicu množenja 15x15 lijepo formatiranu
		
		int[][] table = new int[15][15];
		
		for(int i=0; i<table.length; i++) {
			for(int j=0; j<table.length; j++) {
				System.out.printf("%4d", ((i+1)*(j+1)));
			}
			System.out.println();
			}
		}
		
	}


