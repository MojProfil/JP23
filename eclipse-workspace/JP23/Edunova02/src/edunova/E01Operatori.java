package edunova;

public class E01Operatori {
	
	public static void main(String[] args) {
		//https://docs.oracle.com/javase/tutorial/java/nutsandbolts/opsummary.html
		
		int i=2, j=4; //zamislimo da je pomoću JOptionPane korisnik svaki puta unio ove vrijednosti
		int rezultat=i+j;
		System.out.println(rezultat);
		
		// - * /
		
		// modulo % ostatak nakon cjelobrojnog djeljenja
		
		i=9%2;
		System.out.println(i);
		
		rezultat=rezultat+1;
		rezultat+=1; //isti učinak kao linija iznad
		
		rezultat=rezultat+i;
		rezultat+=i;//isti učinak kao linija iznad
		System.out.println("--------------");
		// ista pravila vrijede i za ostale operatore u kombinaciji s =
		
		// ++ --
		
		// uvečanje za 1
		i=i+1; // 1. način
		i+=1; // drugi način
		System.out.println(i);
		i++; //treći način - prvo se koristi vrijednost pa se uveća
		System.out.println(i);
		++i; //prvo uveća pa se koristi vrijednost
		System.out.println(i);
		
		i=1;
		System.out.println(i++); //2
		System.out.println(++i); //3
		System.out.println(i); //3
		
		
		i=i-1;
		i-=1;
		i--;
		
		i=1;
		System.out.println(i--); //0
		System.out.println(--i); //-1
		System.out.println(i); //-1
	}

}
