package edunova.zadaci;

public class Zadatak3 {
	
	public static void main(String[] args) {
		int k=1,j=-2,r=2;
		
		k+=j-r; // -2 -2 = -4 | 1-4 | k=-3
		System.out.println("k="+k);
		j=k++; // j=-3 k=-2
		System.out.println("j="+j + ",k="+k);
		r=j - --k; // -3 - -3 r=0
		System.out.println("r="+r );
		System.out.println("j="+j );
		System.out.println("k="+k );
		System.out.println(k-j-r); // -2 - -3 - 0
		
		
	}

}
