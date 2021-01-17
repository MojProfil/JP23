package edunova;

public class E02ForPetlja {
	
	public static void main(String[] args)  {
		
		// koristi se kada znate od kuda, do kuda i u kojem koraku idete
		
		// for(od kuda; do kuda; korak)
		
		for(int i=0; i<10; i++) {
			System.out.println("Osijek");
		}
		
		for(int i=0; i<10; i++) {
			System.out.println(i);
		}
		
		
		// zbroj prvih 100 brojeva
		int zbroj=0;
		for(int i=1;i<=100;i++) {
			zbroj+=i;
		}
		System.out.println(zbroj);
		
		
		
		
		// mogućnost preskakanja koraka/ nastavljanje izvođenja
		
		for(int i=0;i<10;i++) {
			if(i==3) {
				continue;
			}
			
			System.out.println("broj je: " + i);
		}
		
		//mogućnost nasilnog prekida petlje
		
		for(int i=0;i<10;i++) {
			if(i==6) {
				break;
			}
			
			System.out.println(i);
		}
		
		// ugnježđivanje petlji
		for(int i=0;i<10;i++) {
			for(int j=0;j<10;j++) {
				System.out.print((i+1)*(j+1) + " ");
			}
			System.out.println();
		}
		
		
		
		// beskonačna petlja
		//for(int i=0; i>0;i++) { // ovo nije beskonačna petlja
			
		//}
		
		for(;;) {
			System.out.println(Math.random());
			try {
				Thread.sleep(500);
			} catch (InterruptedException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		
		
		
		
	}

}
