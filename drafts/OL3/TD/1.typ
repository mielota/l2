#import "@preview/arborly:0.3.1": tree

#align(right)[
  11/09/2025
]

#align(center)[
  = OL3 - TD1
]
\

== 1. Introduction à la logique
\

La logique philosophique a pour but de comprendre le raisonnement humain.\
La logique mathématiques elle voulait établir de nouveaux fondements des mathématiques.\
La logique contemporaine s'intéresse à la logique des fondements informatiques.

\

Un système logique se décompose en trois parties. :


- La syntaxe (forme donnée à l'énoncé le sens n'importe pas)
- La sémantique (le sens des énoncés)
- L'inférence (règles qui permettent de prouver ou réfuter un énoncé)

\
Les énoncés sont normalement exprimés dans un langage symbolique, que l'on appelle souvent 'formules'.

Exemple :
$
(x and (y and not z))
$

La formule de cette logique est composée de variables propositionnelles. La logique est pertinente pour décrire le comportement d'un circuit.

La syntaxe de la formule est bonne, mais elle possède sa propre sémantique. La sémantique affecte une valeur de vérité à la formule (les booléens 0 ou 1).

Notre formule est satisfiable car il existe des valeurs pour lesquelles elle est vraie.

\

On peut également écrire les formules logiques de manière différente.

#align(center)[
  #table(columns: 2)[Formule logique][Formule Java][$(x and (y and not z))$][(x && (y && (!z))]
]

On doit toujours se demander si on peut remplacer ces formules par une formule plus simple pour économiser du temps d'éxécution. On doit aussi évaluer si l'expression est TOUJOURS vraie ou fausse pour simplifier le code final.

\
\
\
\
\
\
\
\
\

== 2. Correction des exercices.
\

=== Exercice 1.

1. Non à cause du $and$
2. Oui
3. Non
4. Non
5. Oui
\
=== Exercice 2.
\
1.
#align(center)[x]

2.
#align(center)[
  #tree()[$and$[$x$][$y$]]
]

3.
#align(center)[
  #tree()[$or$[$and$[$x$][$y$]][$z$]]
]

4.
#align(center)[
  #tree()[$or$[$and$[$x$][$not$[$y$]]][$or$[$x$][$z$]]]
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

5.
#align(center)[
  #tree()[$and$[$or$[$and$[$x$][$y$]][$z$]][$or$[$not$[$and$[$x$][$y$]]][$or$[$x$][$z$]]]]
]

6.
#align(center)[
  #tree()[$and$[$and$[$and$[$and$[$x$][$y$]]][$z$]][$w$]]
]
\
=== Exercice 3.

+ Non car le ',' ne fait pas partie de la syntaxe
+ Non (pas de $or$ ou de $and$)
+ Oui
+ Non (pas de parenthèses)
+ Non (pas de parenthèses), elle est syntaxiquement ambigüe.
+ Non (ambigüité dans la sémantique ET la syntaxe)
+ Non (ambigüe syntaxiquement)
+ Oui
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
=== Exercice 4.

+ $(p -> m, p |!= m)$ Faux, cela n'implique pas qu'il a plus.
+ $(p -> m, p |= m)$ Vrai
+ $(p -> m, not m |= not p)$ Vrai
+ $(p -> m, not p |!= not m)$ Faux
+ $(r or g, not g |= r)$ Vrai
+ $(r or g, g |!= not r)$ Faux. C'est un $or "pas un" xor$ le feu peut-être vert ET rouge.
\
