#import "@preview/zebraw:0.5.5": *
#show: zebraw

#align(right)[
  18/09/2025
]

#align(center)[
  = POO3 - TD1
]

== Exercice 1

1. Dans la sortie standard du terminal on obtient :

#zebraw(numbering: false)[
```
Je m'appelle Tony Parker. J'ai 29 ans.
Je m'appelle Mickael Parker. J'ai 29 ans.
```
]

2. Non, car l'attribut `nom` est privé en dehors de la classe `Personne`. Pour modifier la valeur assignée à la variable sans modifier la visibilité de `nom`, on peut créer la méthode suivante dans la classe `Person` :
#zebraw(numbering: false)[
```java
public void setNom(String n) {
  this.nom = n;
}
```
]
Non l'attribut `age` n'a pas besoin d'être `public`

3. Oui

== Exercice 2

1. Dans la classe personne :
#zebraw(numbering: false)[
```java
private int argent; // en centimes
```
]

2. Méthodes pour le paiement entre deux personnes :

#zebraw(numbering: false)[
```java
public static boolean donne(Personne p1, Personne p2, int montant) {
  if (p1.argent < montant) return false;

  p1.argent -= montant;
  p2.argent += montant;

  return true;
}

public boolean donne(Personne p, int montant) {
  donne(this, p, montant);
}
```
]

Exemple d'appel :

#zebraw(numbering: false)[
```java
public static void main(String[] args) {
  Personne moi = new Personne("Sou", "Nathan", 36);
  Personne lui = new Personne("Ness", "Roro", 39);

  Personne.donne(lui, moi, 500); // 5 euros
  moi.donne(lui, 3500); // 35 euros
}
```
]

3. La méthode semble plus judicieuse, la fonction statique elle a une vibe bizarre.

== Exercice 3

La class `A` affiche :

#zebraw(numbering: false)[
```
Egal
Egal
Egal
Egal
Egal
Different
Different
attribut:2
attribut:2
```
]

\
== Exercice 4

1. Non
2. Pour déclarer un tableau de taille 0 (par exemple d'entiers) : `new int[0]
`
3.
#zebraw(numbering: false)[
```java
public A() {
  this.attr = 0;
}
```
]

4. La sortie standard de cette boucle sera 10 `null`.
#zebraw(numbering: false)[
```java
A[] t = new A[10];

for (int i = 0; i < t.length; i++) {
  System.out.println(t[i]);
}
```
]

Si on fait `t[i].toString()` aura une erreur d'éxécution car le tableau t ne contient que des valeurs `null` (`NullPointerException`).

\
== Exercice 5

#zebraw(numbering: false)[
```java
public class Exo {
  private static int a = 1; // classe
  private int b = 2; // instance
  private final int c = 3; // instance

  public static void main(String[] args) {
    System.out.println("Hello");

    a = 0;

    Exo m = new Exo();
    m.b = 0;
    m.c = 0; // => Renvoie une erreur car on modifie une variable final
  }
}
```
]

== Exercice 6

#zebraw(numbering: false)[
  \
```java
public class Case {
  private int score;
  private char lettre = ' ';
}

public class Grille {
  private Case[][] grille;

  public Grille() {
    for (int i = 0; i < grille.length) {
      for (int j = 0; j < grille[i].length) {
        // Faire la déclaration de la case avec le bon score
      }
    }
  }
}

public class Jeton {
  private char lettre;
  private int points;
}

public class Joueur {
  private int numero;
  private int score;
  private Jeton[] jetons;

  void jouer(Jeton[] jetons, int[][][] pos, int direction) {
    // Vérification horizontal vertical
    if (direction == 1) { // vertical
      for (int i = 0, i < pos.length; i++) {
        // vérifier si la première ou deuxième coordonnée varie ou pas
      }
    }
  }
}

public class Jeu {
  private Grille plateau;
  private Joueur[] joueurs;
  private Jeton[] jetons;
}
```
]

