package zadaci;

public class Zadatak5 {

	public static void main(String[] args) {
//		Kreirati program koji ispisuje cikličnu matricu 
//		(predložak u prilogu) - ulaz su dva cijela broja
		
//		implementirano sa Stack Overflowa - nije gotovo
		
		int size = 5;
		int[][] arraySize = new int[size][size];
		
		int top = 0;
		int bottom = size-1;
		int left = 0;
		int right = size-1;
		int num = 1;
		
		while(left <=right && top <= bottom) {
			for(int j=left; j<=right; j++) {
				arraySize[top][j] = num++;
			} top++;
			for(int i=top; i <= bottom; i++) {
				arraySize[i][right] = num++;
			} right--;
			for(int j=right; j>=left; j--) {
				arraySize[bottom][j] = num++;
			} bottom--;
			for(int i=bottom; i>=top; i--) {
				arraySize[i][left] = num++;
			} left++;
		}
		for()
		System.out.println(arraySize);
	}

}
