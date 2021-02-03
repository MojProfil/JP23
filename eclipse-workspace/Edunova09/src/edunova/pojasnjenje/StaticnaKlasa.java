package edunova.pojasnjenje;

public class StaticnaKlasa {

		public static String odradiPosao() {
			String s = String.valueOf(Math.random());
			
			return s.substring(2,5);
		}
}
