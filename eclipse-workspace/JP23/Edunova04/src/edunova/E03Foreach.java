package edunova;

import java.util.ArrayList;
import java.util.List;

public class E03Foreach {
	
	public static void main(String[] args) {
		
		int[] niz = {3,4,3,5,5};
		
		for(int i=0;i<niz.length;i++) {
			System.out.println("Na indexu " + i + " je broj " + niz[i]);
		}
		System.out.println("=====================");
		// for each

		for(int v:niz) {
			System.out.println(v);
		}
		System.out.println("=====================");
		// for each ima break i continue
		
		//ispis unazad
		for(int i=niz.length-1;i>=0;i--) {
			System.out.println(niz[i]);
		}
		
		// kasnije raditi
		// funkcionanlno programiranje
		List<Integer> lista = new ArrayList<>();
		lista.add(3);
		lista.add(4);
		lista.add(3);
		lista.add(5);
		lista.add(5);
		lista.forEach(v ->System.out.println(v));
		System.out.println("=====================");
		lista.forEach(
				v -> {
					System.out.println(v);
					}
				);
		
	}

}
