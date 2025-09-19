import java.util.Arrays;

public class Exo2 {

	static void affiche(int[] t) {
		for (int val : t) {
			System.out.print(val);
		}
	}

	static int[] multiplication(int[] t1, int[] t2) {
		int tailleMax = Math.max(t1.length, t2.length);
		int tailleMin = Math.min(t1.length, t2.length);

		int[] ret = new int[tailleMax];

		for (int i = 0; i < tailleMin; i++) {
			ret[i] = t1[i] * t2[i];
		}

		return ret;
	}

	static int[] split(int[] t) {
		String values = "";

		for (int val : t) {
			values += String.valueOf(val);
		}

		int[] ret = new int[values.length()];

		for (int i = 0; i < ret.length; i++) {
			ret[i] = Character.getNumericValue(values.charAt(i));
		}

		return ret;
	}

	public static void main(String[] args) {
		System.out.println(Arrays.toString(split(new int[]{123456789, 90})));
	}
}
