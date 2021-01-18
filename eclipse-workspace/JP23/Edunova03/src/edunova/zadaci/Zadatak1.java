package edunova.zadaci;

public class Zadatak1 {
	
	public static void main(String[] args) {
		
		//Program ispisuje sve brojeve od 20 do 200
		for(int i = 20; i<=200; i++) {
			if(i%2==0) {
				System.out.println(i);	
			}
		// program ispisuje sve parne brojeve od 1 do 57
			for(i = 1; i<=57; i++) {
				if(i%2==0) {
					System.out.println(i);	
				}
		//program ispisuje sve brojeve od 100 do 1
				for(i = 100; i>1; i--) {
						System.out.println(i);	
					}
		//program ispisuje sve neparne brojeve od 100 do 21
				for(i=100; i>=21; i--) {
					if(i%2 != 0) {
						System.out.println(i);
					}
				}	
			}
		}
	}
}
