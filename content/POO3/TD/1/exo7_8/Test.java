public class Test {
	public static void main(String[] args) {
		Personne moi = new Personne("Sou", "Nathan", 36, 3);

		Compte[] mesComptes = moi.getRIB();

		mesComptes[0].credite(1000);
		mesComptes[1].credite(78000);
		mesComptes[2].credite(27);

		int creancier = moi.retrait(100000);
		System.out.println(moi.infoComptes());
		System.out.printf("Le créancier a pris %d euros à %s", creancier, moi.toString());
	}
}
