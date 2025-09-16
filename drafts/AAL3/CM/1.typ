#align(right)[
  09/09/2025
]

#align(center)[
  = AAL3 - CM1
]

\
== Modalités de contrôle:

#list()[
  Note cc :\
  60% partiel + 20% TD1 + 20% TD2
][
  Note session 1 :\
  50% examen + 50% CC
]
\
== Description de AAL3:

C'est l'analyse d'un langage qui est un ensemble de plusieurs mots.

Ici on va par exemple étudier les composants d'un compilateurs, par exemple le parser qui va lire les "phrases" du fichier qui va les découper en "unité lexicale".

\
#underline()[== I. Mots et langages]
\
Définition : Alphabet : Un ensemble fini de symboles.
Pour noter l'ensemble d'un alphabet on écrit par exemple :

$ Sigma = {a, b} $

$Sigma^* :$ l'ensemble de tous les mots $Sigma$\
Éléments de $Sigma^* : $ aba, abaabba, $epsilon$ ...
Notez que $ epsilon$ représente un "mot vide".

\

Si $w in Sigma^*, |w|$ est la longueur de w.\
Par exemple :

#align(center)[
  |aba| = 3\
  $ |epsilon| = 0$
]

$|w|_a $ est le nombre d'occurrences de $ a(a in Sigma)$ dans $w$

\

=== Concaténation
$ v dot w ->$ exemple $ a b dot b b a = a b b b a $\
$ epsilon dot w = w$

Attention, notez que la concaténation n'est pas commutative.
$ a dot b != b dot a $
Elle est cependant associative.
$ u dot (v dot w) = (u dot v) dot w $
$ w^n = w times w times ... "n fois" $
$ n in NN_0 |v dot w| = |v| + |w| $

=== Relations entre les mots
- $ v$ est un préfixe de $w$ si il existe $u$ tel que $w = v dot u$
- $v$ est un préfixe de $v$
- $epsilon$ est préfixe de tout $w in Sigma^*$ un mot de longueur n $a^(n+1)$ préfixes.
- Les préfixes de ab : $epsilon, a,$ ab\
- $ v$ est un suffixe de $w$ si il existe $u$ tel que $w = u dot v$\
- a est préfixe et suffixe de "abba".
- bb est facteur de aabba
- $v$ est un sous mot de $w$ si $v$ peut être obtenu de $w$ par l'effacement de certaines lettres.
- abc est un sous mot de aabaabcab
\

=== Langages

Un langage sur $Sigma$ est une partie (sous-ensemble) de $Sigma^*$

$ Sigma = {a, b} $
$ L_1 = {w in Sigma^*} $
$ L_2 = {a b, a b b a, b a a b} $
$ L_3 = {w in Sigma^* | a b a "est facteur de" w} $
$ L_4 = nothing $

\

La concaténation des deux langages :
$ L_1 dot L_2 = {w_1 dot w_2 | w_1 in L_1, w_2 in L_2} $
$ {a, a a} dot {b, b b} = {a b, a b b, a a b, a a b b } $
$ {a, epsilon } dot {b, b b} = {a b, a b b, b, b b} $
$ {a, a a} dot {a, a a} = {a a, a a a, a a a a} $
$ {epsilon dot L = L} $
$ nothing dot L = nothing $

Ne pas confondre ${epsilon}$ avec $nothing$.

Si $n in NN_0 : L^n = L dot ... dot L -> "Exemple :" {a a, b b}^3 "contient" a a b b a a$

=== Opérations ensemblistes :
- $L_1 union L_2$
- $L_1 inter L_2$
- $L^("comp")$ complément par rapport à $Sigma^* : Sigma^* - L$
- $L^n = L ... L$ n fois
- $i >= 0$\
- $L^* = "UL"^i = L^0_u L^1_u L^2_u L^2_u$
\

#underline()[== II. Expressions Rationnelles]
Prenons $Sigma = {a, b}$

#align(center)[
#table(columns: 2)[Expression $e$][Sémantique de $e : L(e)$][$a b$][${a b}$][$a b + b b + a$][${a b, b b, a}$][$a(b+a)$][${a b, a a}$][$a^*$][${epsilon, a, a a, a a a, a a a a, ...}$][$(a dot (b + b b))^*$][${epsilon, a b, a b b, a b a b, a b a b b, a b b a b, a b b a b b, ...}$]
]
\
=== Définition de la syntaxe

L'ensemble ExpRat (expression rationnelle) est le plus petit ensemble tel que :
- si $a in Sigma,$ alors $a in$ ExpRat
- $epsilon in$ ExpRat
- $nothing in$ ExpRat
- si $r_1,r_2 in "exprat, alors" r_1+r_2 in$ ExpRat
- si $r_1,r_2 in "exprat, alors" r_1+r_2 in$ ExpRat
- si $r in "ExpRat, alors" r^* in$ ExpRat

\
=== Définition de la sémantique
- $L(a) = {a}$
- $L(epsilon) = {epsilon}$
- $L(nothing) = {nothing}$
- $L(r_1 dot r_2) = L(r_1) dot L(r_1)$
- $L(r^*) = (L(r))^*$
