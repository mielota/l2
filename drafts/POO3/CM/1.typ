#import "@preview/zebraw:0.5.5": *
#show: zebraw

#align(right)[
  09/09/2025
]

#align(center)[
  = POO3 - CM1
]

\

== 1. Histoire de Java

\
Il a été conçu en 1991, il a été créé dans le but de créer un langage portable et multiplateforme.
En 2009 Oracle a racheté la société Sun et maintient désormais Java.

Le code java est compilé en bytecode, c'est une représentation intermédiaire entre le code source et le langage machine. Il est interprété par la machine virtuelle Java (JVM)

\
== 2. Informations sur Java
\
On peut regarder le bytecode d'un fichier java compilé (.class) avec la commande :
```sh
javap -c Fichier.java
```
\
Étant donné que le bytecode est interprété par la JVM, les applications java sont indépendantes du système d'exploitation.

Le bytecode est aussi vérifié par la JVM pour être sûr que le programme n'effectue pas d'opérations interdite par le système d'exploitation (par exemple accéder à de la mémoire n'appartenant pas au programme).


\
Un des reproches fait à Java est que le langage n'est pas assez rapide. Des améliorations ont donc été faits pour améliorer ses performances. Introduite avec la version JDK 1.2, le Just-in-Time compiler (JIT) convertit dynamiquement les parties fréquentes du code en code natif, ce qui améliore les performances du programme.

\
== 3. L'environnement Java

\
Java repose sur trois composants principaux :
- JVM (Java Virtual Machine)
- JRE (Java Runtime Environment)
- JDK (Java Development Kit)

=== JVM

La machine virtuelle exécute le bytecode, gère la mémoire, et permet la portabilité entre systèmes d'exploitation. Comme dit précédemment elle vérifie aussi qu'un bytecode ne fait rien 'd'illégal' avant de l'exécuter.

=== JRE

La JRE contient des composants essentiels comme la JVM et la bibliothèque standard de Java (java.lang, java.util, java.io etc...).

=== JDK

Le JDK contient les deux composants précédent, mais aussi le compilateur, la javadoc et le debugger java jdb.

La javadoc génère une documentation html à partir des commentaires du code source d'un projet.

\

== 4. Évolution de la plateforme Java

\

Java est régulièrement mis à jour, il dispose de versions plus utilisées que les autres dû au fait que certaines sont supportées pendant quelques années après leurs sorties (Long Term Support ou LTS).

\

== Rappels de cours


===
```java
// Fichier Rappel.java
// J'ai pas oublié comment coder en Java mais go faire genre

public class Rappel {

  public static void main(String[] args) {
    System.out.println("Rappel de cours.")
  }
}
```

Compilation :
#zebraw(numbering: false)[
```sh
javac Rappel.java
```
]
Éxécution :
#zebraw(numbering: false)[
```sh
java Rappel
```
]

\
\
\
\
\
\
\
\
\
\
\
\
\
\
== Programmation Orientée Objet (POO)

\

Dans la POO :
- On regroupe les données et les méthodes liées entre elles dans une "class".
- Chaque objet possède ses propres attributs et méthodes.

Voici l'exemple d'une classe en Java :

```java
// Déclaration de la classe
public class Objet {
  // Déclaration des attributs
  private final String nom;
  private final int id;

  // Attributs statiques de la classe
  private static int idCursor;

  // Constructeur d'un objet
  public Objet(String nom) {
    this.nom = nom;
    this.id = idCursor++;
  }

  public String getNom() {
    return this.nom;
  }
}
```

On peut ainsi créer des instances de cet objet.

```java
public static void main(String[] args) {
  Objet a = new Objet("patate");
  System.out.println(a.getNom()); // Affiche 'patate'
}
```

Une entité en java déclarée 'public' peut-être accéder depuis n'importe où.\
Alors qu'une entité déclarée 'private' ne peut être accédé que depuis la classe où elle a été définie.

Les getters (et setters) ainsi que les modifiers permettent de garder le contrôle sur qui peut voir et modifier des données.

\
La POO a un principe d'encapsulation (regrouper les données et méthodes au sein d'une même classe). Les avantages sont d'empêcher les accès non autorisé, les getters/setters permettent d'ajouter des règles de validation avant d'accéder à un attribut. Et l'encapsulation améliore la modularité du code.

\
\
== Les String en Java

\

Les objets String sont immuables, à chaque fois qu'un String est modifié, en réalité un nouvel objet est créé.\
La String pool permet de réduire la consommation de ressources des String, par exemple si un nouveau String est créé et qu'il a le même contenu qu'un autre String de la pool, le nouveau String aura juste une référence vers le String déjà éxistant. Ce qui économise de la mémoire.

```java
String a = "!"; // premier String dans la String pool
String b = "!"; // b est une référence vers a
System.out.println(a == b); // -> true

String c = new String("!");
System.out.println(a == c); // -> false, car c est allouée dans la heap et non la String pool
```

\
== Packages

\

Les packages en Java  sont un regroupements logique d'entités Java (class, interface, enum, etc...).

```java
package hero;

public class SpiderMan {...}
```

```java
// Par exemple depuis un package différent
import hero.SpiderMan;
```

Le keyword 'protected', rend une entité publique aux autres membres de son package/ses enfants.
