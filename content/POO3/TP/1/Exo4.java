import java.util.Scanner;

public class Exo4 {

	static Scanner input = new Scanner(System.in);

	static boolean question() {
		int a = (int)(Math.random() * 7789765)%9 + 1;
		int b = (int)(Math.random() * 7789765)%9 + 1;
		
		System.out.printf("%d * %d = ", a, b);

		int userInput = input.nextInt();

		return userInput == a*b;
	}

	static int evaluation(int n) {
		int points = n;

		for (int i = 0; i < n; i++) {
			points -= question() ? 0 : 1;
		}

		return points;
	}

	public static void main(String[] args) {

		int n = 5;

		System.out.printf("%d/%d\n", evaluation(n), n);

		input.close();
	}
}
