package zadaci;

import javax.swing.JOptionPane;

public class Zadatak03 {

	public static void main(String[] args) {
//		Kreirati program koji za dva unesena broja ispisuje sve prim/prosti/prime brojeve između njih.
		
		String a = JOptionPane.showInputDialog("Enter first number");
		String b = JOptionPane.showInputDialog("Enter second number");
		
		int first = Integer.parseInt(a);
		int last = Integer.parseInt(b);
		
		for(int i = first; first<last; first++) {
			if(i%i == 0) {
				System.out.println(first);
			}
		}
	}

}
