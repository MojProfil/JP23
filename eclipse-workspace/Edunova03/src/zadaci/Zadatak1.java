package zadaci;

public class Zadatak1 {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
			
		for(int i=20; i<201; i++) {
			System.out.println(i);
		}
		
		for(int i=0; i<58; i++) {
			if(i%2==0) {
				System.out.println(i);
			} 
		}
		for(int i=100; i>0; i--) {
			System.out.println(i);
		}
		int brojac = 0;
		for(int i=0; i<101; i++) {
			brojac+=i;
		}
		System.out.println(brojac);
	}

}
