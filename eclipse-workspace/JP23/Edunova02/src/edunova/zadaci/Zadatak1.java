package edunova.zadaci;

import javax.swing.JOptionPane;

public class Zadatak1 {
	
	// korisnik unosi cijeli broj. 
	// Program ispisuje 1 ako ne neparan, 0 ako je paran
	
	public static void main(String[] args) {
//		String s = JOptionPane.showInputDialog("broj");
//		int i=Integer.parseInt(s);
//		int rez= i%2;
//		System.out.println(rez);
		
		System.out.println(Integer.parseInt(JOptionPane.showInputDialog("broj"))%2);
	}

}
