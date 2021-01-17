package edunova;

public class E02DoWhile {
	
	public static void main(String[] args) {
		
		// sve isto kao i while osim što se uvjet provjerava na kraju
		// do wjile petlja se uvije izvodi minimalno jednom
		
		int kraj=20;
		for(int i=40;i<kraj;i++) {
			System.out.println("Osijek");
		}
		
		while(kraj++<0) {
			System.out.println("Osijek");
		}
		
		do {
			System.out.println("Osijek");
		}while(kraj++<0);
		
		// sve ostalo iz for i while vrijedi i za do while
		int i=0,j=3;
		do{
			System.out.println("OK");
		}while(i<5 && j<4);
		
		
		
		do {
			
		}while(i< ((i>j) ? 9 : 8) );
		
	}

}
