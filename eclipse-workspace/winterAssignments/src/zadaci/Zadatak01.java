package zadaci;

import java.util.Scanner;

import javax.swing.JOptionPane;

public class Zadatak01 {

	public static void main(String[] args) {
			
	Scanner unos = new Scanner(System.in);
	
	System.out.println("Koliko brojeva želite unijeti? ");
	int listLength = unos.nextInt();
	int[] lista = new int[listLength];
	
	//- unos brojeva -//
	
	for(int i = 0; i<listLength; i++) {
		System.out.print("Unesi " + (i+1) + "." + " broj: ");
		lista[i] = unos.nextInt();
	}
	unos.close();
	
	//- prikaz unesenih brojeva -//
	
	System.out.println("Uneseni brojevi su: ");
	for(int i = 0; i<listLength; i++) {
		System.out.print(lista[i] + ", ");
	}
	
	//- zbroj unesenih brojeva -//
	
	int zbroj = 0;
	
	for(int i = 0; i<listLength; i++) {
		zbroj+=lista[i];
	}
	System.out.println("a zbroj unesenih brojeva je: " + zbroj);
	
	//- prikaz najmanjeg i najvećeg člana liste-//
	
	int max = lista[0]; 
    int min = lista[0];
	
	for(int i=0;i < listLength; i++){ 
      if(lista[i] > max){ 
         max = lista[i]; 
      		}
    	}
	System.out.println("Najveći broj je: " + max);
	
	for(int i=0; i <listLength; i++) {
		if(lista[i] < min) {
			min = lista[i];
		}
	}
	System.out.println("Najmanji broj je: " + min);
	
	
	}
}


