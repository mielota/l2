import java.util.Random;

class Informations {

	private int v, f, a; // vitalité, force, agilité

	public Informations(int v, int f, int a) {
		this.v = v;
		this.f = f;
		this.a = a;
	}

	public Informations(Informations inf) {
		this(inf.v, inf.f, inf.a);
	}

	public int getV() {
		return v;
	}

	public int getF() {
		return f;
	}

	public int getA() {
		return a;
	}

	public void setV(int v) {
		this.v = v;
	}

	public void setF(int f) {
		this.f = f;
	}

	public void setA(int a) {
		this.a = a;
	}

	@Override
	public String toString() {
		return String.format("vitalité:%d\nforce:%d\nagilité:%d\n", v, f, a);
	}
}

class Personnage {

	private String nom;
	private Informations etatInitial, etatActuel;
	private Random rand = new Random();

	public Personnage(String nom, int v, int f, int a) {
		this.nom = nom;
		this.etatInitial = new Informations(v, f, a);
		this.etatActuel = new Informations(v, f, a);
	}

	public Personnage(String nom) {
		this(nom, 3, 2, 1);
	}

	@Override
	public String toString() {
		return nom + "\n" + etatActuel.toString();
	}

	public String getNom() {
		return nom;
	}

	public boolean estVivant() {
		return etatActuel.getV() > 0;
	}

	public void rebirth() {
		this.etatActuel = etatInitial;
	}

	public void attaque(Personnage def) {

		// TODO définir n
		
		if (def.etatActuel.getA() < this.etatActuel.getA()) {
			def.etatActuel.setV(def.etatActuel.getV() - n);
		}

		else {
			def.etatActuel.setV(def.etatActuel.getV() - (n/2));
			def.etatActuel.setA(def.etatActuel.getA() - (n/3));
		}
	}
}

class Combat {
	private Personnage j1;
	private Personnage j2;

	public Combat() {
		j1 = new Personnage("Romain");
		j2 = new Personnage("Yanis");
	}

	public void combattre() {
		int tour = 0;
		while (j1.estVivant() && j2.estVivant()) {
			if (tour%2==0) {
				j1.attaque(j2);
			} else {
				j2.attaque(j1);
			}

			System.out.println(j1 + "\n" + j2 + "\n");
		}

		System.out.println((j1.estVivant() ? j1.getNom() : j2.getNom()) + " a gagné !");
	}
}

public class Exo5 {
	public static void main(String[] args) {
		Combat combat = new Combat();

		combat.combattre();
	}
}
