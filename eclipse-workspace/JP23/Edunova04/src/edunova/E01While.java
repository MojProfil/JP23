package edunova;

public class E01While {
	
	public static void main(String[] args) {
		
		// princip sve do je zadovoljen uvjet
		// radi s tipom podatka boolean
		
		// beskonačna petlja
//		while(true) {
//			
//		}
		
		// while ima continue i break kao i for
		
		int i=0;
		while(true) {
			if(++i>10) {
				break;
			}
			if(i==3) {
				continue;
			}
			System.out.println(i);
		}
		System.out.println("======================");
		i=0;
		while(i<10) {
			i++;
			if(i==3) {
				continue;
			}
			System.out.println(i);
			
		}
		
		//ugnježđivanje zadatak: Ispisati tablicu množenja
		// 5 x 5 s while petljam
		
		i=0;int j=0; int k=0;
		glavna:
		while(i<10) {
			while(j<10) {
				while(k<10) {
					if(i==0) {
						break glavna;
					}
				}
			}
		}
		
	}

}
