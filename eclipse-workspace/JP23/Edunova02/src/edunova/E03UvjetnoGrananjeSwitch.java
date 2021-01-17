package edunova;

public class E03UvjetnoGrananjeSwitch {

	public static void main(String[] args) {
		int i = 5;

		if (i == 5) {
			System.out.println("5");
		} else if (i == 6) {
			System.out.println("X");
		} else if (i == 7) {
			System.out.println("X");
		} else {
			System.out.println("Ostalo");
		}

		switch (i) {
		case 5:
			System.out.println("5");
			break;
		case 6:
		case 7:
			System.out.println("X");
			break;
		default:
			System.out.println("Ostalo");
		}

		// >= JDK 12
		switch (i) {
		case 5 -> System.out.println("5");
		case 6, 7 -> System.out.println("X");
		default -> System.out.println("Ostalo");
		}

		// switch radi s int, char i String

		char c = 'X';

		switch (c) {
		case 'X' -> System.out.println("OK");
		}

		String s = "X";

		switch (s) {
		case "X" -> System.out.println("OK");
		}

//		double d=2.2;
//		
//		switch (d) {
//		case "X" ->System.out.println("OK");
	}

}
