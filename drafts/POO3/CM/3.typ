#import "@preview/zebraw:0.5.5": *
#show: zebraw

#align(right)[
  19/09/2025
]

#align(center)[
  = POO3 - CM3
]

\

== 1. Héritage
\
L'héritage permet à une classe `A` d'hériter des méthodes/attributs d'une classe `B`

Une classe qui a hérité d'une autre, permet d'être décrite pas sa différence. Étant donné que `B` est tout comme `A`, `B` sera définie par les attributs/méthodes en plus qu'elle a comparé à `A`

La syntaxe pour hériter d'une classe est la suivante :

#zebraw(numbering: false)[
```java
public class B extends A {}
```
]

Une classe peut avoir plusieurs sous classes, mais qu'une seule classe parente (on ne peut pas hériter de plusieurs classes en même temps).

\
Pour les constructeurs on procède de la manière suivante :

#zebraw(numbering: false)[
```java
public class A {

  int x;

  public A() {
    x = 0;
  }
}

public class B extends A {
  
  int y;

  public B() {
    super(); // va initialiser x à 0;
    y = 1;
  }
}
```
]

\
Lorsqu'on hérite d'une méthode on peut augmenter les droits d'accès mais pas l'inverse.
Le type de retour de la méthode peut changer si il est une sous classe du type d'avant.

Le mot clé final permet interdit la rédéfinition d'une classe, ou l'héritage de celle-ci.
