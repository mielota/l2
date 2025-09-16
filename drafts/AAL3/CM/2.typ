#align(right)[
  16/09/2025
]

#align(center)[
  = AAL3 - CM2
]

\

$ (a+b)^* a a b a (a+b)^* " " Sigma = {a, b} $
$ (a dot (b dot c)) -> a b c $

\
=== Lois d'équivalences

Deux expressions rationnelles $r_1 , r_2$ sont équivalentes quand $L(r_1) = L(r_2)$ noté $r_1 equiv r_2$

Pour_toutes expressions $r_1 , r_2 , r_3$:
$ (r_1 dot r_2) dot r_3 equiv r_1 dot (r_2 dot r_3) $
$ epsilon dot r_1 equiv r_1 $
$ r_1 ( r_2 + r_3) equiv r_1 r_2 + r_1 r_3 $
$ (r_1^*)^* equiv r_1^* $
$ (a b)^* equiv a (b a)^* $

Un langage $M$ est #underline()[rationnel] quand il existe un $r$ avec $M=L(r)$

\
=== Questions concernant les expressions rationnelles

+ Des langages pas rationnels ?
+ Algorithme de décision pour les langages rationnel
+ Propriété de clôture de la classe des langages rationnel

\
=== Propriétés de clôture
\
#align(center)[
#table(columns: 3)[][Classe des langages finis][Classe des langages rationnels : Rat
  ][$union$][$checkmark$][$checkmark$
  ][$inter$][$checkmark$][?
  ][complément][$crossmark$][?
  ][concaténation][$checkmark$][$checkmark$
  ][$*$][$crossmark$][$checkmark$]
]

\
\
\
\
\
\
\
Contre exemple de la clôture des langages finis par \*:
$ {a}^*  =  {a, a a, a a a, "..."} $
Attention ! Sachez que :
$ {epsilon}^* = {epsilon} $
$ nothing^* = {epsilon} $

\
#underline()[== III. Automates déterministes]

\
Exemple :
$ Sigma = {a, b} $

$ ->underbracket(#circle()[1], a arrow.t.turn) ->^b underbracket(#circle()[2], a arrow.t.turn) ->^b #circle()[#circle()[3]] ->^a_b #circle()[$tack.t$] arrow.l.turn a, b $

Accepté : $a a a b a a b, b b$\
Pas accepté : $a a b a a, b b a$

Donc l'expression rationnelle pour le langage des mots acceptés : $a^* b a^*b$

$ ->overbracket(#circle()[#circle()[pair]], arrow.b.turn b) <->^a_a overbracket(#circle()[impair], arrow.b.turn b) $

\
Définition :

Un automate fini déterminitste (AFD) consiste en :

1) Un alphrabet fini : $ Sigma$\
2) Un ensemble fini d'états: $Q$\
3) Un état initial : $q_0  in Q$\
4) Un ensemble d'états acceptants : $F subset.eq Q$\
5) Une fonction partielle $delta : Q times Sigma ~~> Q$

$ A = (Sigma, Q, q_0, F, delta) $

\
\
\
\
\
\
\
\
Exemple $A_1$

$ Sigma = {a, b} $
$ Q = {1,2,3} $
$ q_0 = 1 $
$ F = {3} $

#align(center)[
#table(columns: 3)[][a][b
  ][1][1][2
  ][2][2][3
  ][3][-][-]
]

L'éxécution d'un AFD sur un mot\
Soit $A=(Sigma, Q, q_0, F, delta)$ un AFD\
On défini $delta^* : Q times id^* ~~> Q$
- $delta^* (q, epsilon) = q$
- $delta^* (q, w a) = delta (delta^*(q,w))$ quand $delta^*(q,w)$ est défini
- $delta^* (q, w a) = $non défini quand $delta^*(q,w)$ n'est pas défini

Par exemple pour $A_1$:

$delta^*(1,a a b a) = 2$\
$delta^*(2, b b)$ pas défini

Le langage $L(A)$ reconnu par l'automate $A$ est $L(A) = {w in Sigma^* | delta^*(q_0,w) in F}$

Un langage $M$ est reconnaissable s'il existe un automate déterministe $A$ avec $M = L(A)$

Pour tout AFD $A_1$, il y a un AFD complet $A_2$ tel que $L(A_1) = L(A_2)$

Si $A$ reconnaît le langage $M$\
$A = (Sigma, Q, q_0, F, delta)$ l'automate $(Sigma, Q, q_0, Q-F, sigma)$ reconnaît le langage $M$ si $A$ est complet

\
Exemple : Automate $(L(A_1))^("comp")$

$ ->underbracket(#circle()[#circle()[1]], a arrow.t.turn) ->^b underbracket(#circle()[#circle()[2]], a arrow.t.turn) ->^b #circle()[3] ->^(a,b) #circle()[#circle()[$tack.t$]] arrow.l.turn a $
