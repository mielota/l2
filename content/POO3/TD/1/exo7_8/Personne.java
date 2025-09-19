public class Personne {

	private String nom;
	private String prenom;
	private int age;
	private Compte[] comptes;

	public Personne(String nom, String prenom, int age, int n) {
		this.nom = nom;
		this.prenom = prenom;
		this.age = age;
		this.comptes = new Compte[n];

		for (int i = 0; i < comptes.length; i++) {
			comptes[i] = new Compte(this);
		}
	}

	public void setPrenom(String p) {
		this.prenom = p;
	}

	public void setNom(String n) {
		this.nom = n;
	}

	public void anniversaire() {
		this.age++;
	}

	public Compte[] getRIB() {
		return comptes;
	}

	public int retrait(int montant) {
		int argent = 0;
		int montantRestant = montant;

		for (int i = 0; i < comptes.length && montantRestant > 0; i++) {
			int argentDisponible = comptes[i].getSolde();
			int argentAPrelever = (montantRestant - argentDisponible)%montantRestant;

			argent += comptes[i].debite(argentAPrelever);
			montantRestant -= argentAPrelever;
		}

		return argent;
	}

	@Override
	public String toString() {
		return String.format("%s %s", nom, prenom);
	}

	public String infoComptes() {
		String infos = "";

		for (int i = 0; i < comptes.length; i++) {
			infos += comptes[i].toString() + (i + 1 == comptes.length ? "" : "\n");
		}

		return infos;
	}
}
