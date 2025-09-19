public class Compte {

	private Personne titulaire;
	private int solde;

	private static long nbComptes = 0;
	private final long numero;

	public Compte(Personne titulaire) {
		this.titulaire = titulaire;
		this.numero = nbComptes++;
	}

	public int getSolde() {
		return solde;
	}

	public long getNumero() {
		return numero;
	}
	
	public static long getNbComptes() {
		return nbComptes;
	}

	public void credite(int montant) {
		this.solde += montant;
	}

	public int debite(int montant) {
		if (this.solde >= montant) {
			this.solde -= montant;
			return montant;
		}

		else {
			return 0;
		}
	}

	@Override
	public String toString() {
		return String.format("Solde de %s [%d] : %d euros", titulaire.toString(), numero, solde);
	}
}
