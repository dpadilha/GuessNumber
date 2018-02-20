package Model;

import java.util.Random;

public class Numero {
	private int numeroAleatorio = gerarNumero();
	private int numeroMaior = 100;
	private int numeroMenor = 0;
	private int count = 0;
	
	public boolean thisNumero(int numero) {
		if(this.numeroAleatorio == numero) {
			return true;
		}else {
			if(numero < numeroMaior && numero > numeroAleatorio) {
				numeroMaior = numero;
			}else if(numero > numeroMenor && numero < numeroAleatorio) {
				numeroMenor = numero;
			}
			return false;
		}
	}
	
	public void incrementoTentativas() {
		this.count+=1;
	}
	
	public int gerarNumero() {
		Random ran = new Random();
		int n = ran.nextInt(101);
		return n;
		
	}

	public int getNumeroAleatorio() {
		return numeroAleatorio;
	}

	public int getNumeroMaior() {
		return numeroMaior;
	}

	public void setNumeroMaior(int numeroMaior) {
		this.numeroMaior = numeroMaior;
	}

	public int getNumeroMenor() {
		return numeroMenor;
	}

	public void setNumeroMenor(int numeroMenor) {
		this.numeroMenor = numeroMenor;
	}

	public int getCount() {
		return count;
	}

	
	
}
