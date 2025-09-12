#import "@preview/zebraw:0.5.5": *
#show: zebraw

#align(right)[
  12/09/2025
]

#align(center)[
  = POO3 - CM2
]

\

== 1. Types primitifs
\

En Java on dispose de plusieurs types de bases appelés 'primitifs'. Ce sont les booléens, nombres entiers et flottants et les caractères. Ce sont les seuls types qui ne sont pas des classes.

Chaque type primitifs possède une 'wrapper' classe, qui permettent de représenter un type primitif en tant qu'objet.


=== Types entiers
\
Ils permettent de représenter les nombres entiers et sont signés. Pour transformer un entier positif en entier négatif on peut utiliser le complément à 2.

Par exemple: (notez que l'on note un mot binaire '$0b...$')

$ 5 => 0b 00000101 -> 0b 11111010 -> 0b 11111011 => -5 $
On peut ensuite convertir en hexadécimal si on le souhaite.

\
Java dispose quatre types d'entiers (byte, short, int, long). La taille de ces types est définie par le langage contrairement aux langages C/C++ où la taille d'un _int_ peut varier selon l'architecture du processeur (32 ou 64 bits).

\
Bien sûr en Java la capacité d'une variable peut déborder, par exemple :

```java
byte a = Byte.MAX_VALUE; // => 127
System.out.println((byte)(a + 1)); // => -128
```


=== Types flottants
\
Les nombres flottants ne sont pas parfaitement précis, ils sont donc approximatifs.

Ils ont une notation décimale :
- 0.57, .68, 98.

Et une notations exponentielle :
- 2E12

Java dispose de deux types pour représenter les nombres flottants (float et double).

Par défaut les constantes sont des doubles :

```java
var x = 32.0; // 32 est un double
var y = 32.0f; // ici c'est un float
```

Voici un exemple d'imprécision

```java
System.out.println(0.1 + 0.2 == 0.3) // => false
```


== 2. Mémoire
\

La mémoire d'un processeur peut-être vu comme un grand tableau d'octets, il possède des groupes de 8 octets contenant une adresse mémoire.
- L'adresse identifie une position dans la mémoire.
- Chaque octet a une adresse unique.

\
La _stack_ stocke les variables primitives et les pointeurs vers les objets qui se situent dans la _heap_.
Les objets sont stockés différemment en mémoire. On garde les références qui pointent vers l'emplacement mémoire où l'objet est stocké.

\
La pile d'exécution elle est un espace mémoire alloué aux appels de fonctions.

Les fonctions ont un _'Record d'activation (RA)'_. Ils possèdent différentes informations :
- Les arguments passés à la méthode
- Toutes les variables locales de la fonction
- L'adresse de retour

\
Aussi, la comparaison '==' entre deux objets comparent les références de l'objet et non le contenu des objets. Pour comparer le contenu il faut implémenter la méthode equals() de la classe Object. Par exemple pour comparer deux String on utilise s1.equals(s2) et non s1 == s2

\
En Java il existe une référence ne pointant vers rien : _null_. Essayer d'appeler une méthode sur une référence null lancera l'exception _NullPointerException_.

\
La mémoire est elle libérée par le _Garbage Collector_, il libère la mémoire présente sur le tas si il n'y a plus aucunes références vers l'objet.

\
Les paramètres en Java sont passés par valeur, on ne peut pas passer une référence en argument de fonction. Donc la méthode copie la valeur des arguments dans la mémoire locale dans son _RA_.

\
== 3. Variables et méthodes de classe
\

Le champ _static_ rend les méthodes/variables partagés entre toute la classe. C'est utile pour déclarer des constantes utilisables par toutes les instances de la classe, ou pour créer des variables qui doivent être partagées entre plusieurs instances. On accède à un champ statique de la classe via un getter ou si l'attribut est public : _NomDeLaClasse.attribut_

Comme par exemple Math.PI ou Integer.MAX_VALUE

La méthode main est toujours déclarée _static_ pour l'appeler directement dès que la classe est chargée pour ne pas avoir à créer une instance de la classe.
