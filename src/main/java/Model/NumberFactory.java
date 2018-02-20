package Model;

public class NumberFactory {
	private static Numero numero;
	
	public static Numero getInstance() {
		if (numero == null) {
			numero = new Numero();
		}
		return numero;
	}
}
