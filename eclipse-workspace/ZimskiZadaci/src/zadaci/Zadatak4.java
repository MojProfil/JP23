package zadaci;

import java.util.Scanner;

public class Zadatak4 {

	public static void main(String[] args) {
//		Kreirati program koji unosi dvije matrice 4x4 te ispisuje njihov zbroj
		
		   int row = 4, col = 4, i, j, count = 0;
	       int arr[][] = new int[row][col];
	       Scanner scan = new Scanner(System.in);
		   
//		 unos elemenata u listu
	       System.out.println("Unesi " +(row*col)+ " elemenata liste : ");
	       for(i=0; i<row; i++)
	       {
	           for(j=0; j<col; j++)
	           {
	               arr[i][j] = scan.nextInt();
	           }
	       }
		   
//	       prikaz elemenata
	       System.out.print("Prikaz unesenih vrijednosti :\n");
	       for(i=0; i<row; i++)
	       {
	           for(j=0; j<col; j++)
	           {
	               System.out.printf("%4d", arr[i][j]);
	           }
	           System.out.println();
	       }
	       
//	       suma svih elemenata
	       for(i = 0; i<arr.length; i++) {
	    	   for(j = 0; j < arr.length; j++) {
	    		   count+=arr[i][j];
	    	   }
	       }
	       System.out.printf("Zbroj unesenih vrijednosti = " + count);
	}
}
