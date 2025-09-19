public class Shift {

	static final String voyelles = "aeiouy";
	static final int voyellesLength = voyelles.length();

	static char replace(char voyelle) {
		return voyelles.charAt((voyelles.indexOf(voyelle) + voyellesLength - 1)%voyellesLength);
	}

	public static void main(String[] args) {

		for (int i = 0; i < args.length; i++) {
			String word = "";

			for (int j = 0; j < args[i].length(); j++) {
				char lettre = args[i].charAt(j);
				word += voyelles.contains(lettre + "") ? replace(lettre) : lettre;
			}

			args[i] = word;
		}

		for (String arg : args) {
			System.out.print(arg + " ");
		}

		System.out.println();
	}
}
