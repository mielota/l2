#align(right)[
  16/09/2025
]

#align(center)[
  = MATH3 - TD1
]

\

== Fonctions équivalentes

\
Soit $x_0 in RR "ou" x_0 = plus.minus infinity, f(x) "et" g(x)$ deux fonctions définies au voisinage de $x_0$

Définition : $f(x) "et" g(x)$ sont équivalentes en $x_0$ (au voisinage de $x_0$) si $f(x) = g(x) + epsilon(x)g(x)$ où $epsilon(x)$ est une fonction qui tend vers 0 quand $x -> x_0$

On note $f(x) ~_x_0 g(x)$ lorsque c'est le cas.

\
=== Remarques :

1) Si $g(x)$ est nulle au voisinage de $x_0$\
Alors $f(x) ~_x_0 g(x) <=> f(x) (1+epsilon(x)g(x) <=> f(x)$ est nulle au voisinage de $x_0$

2) Si $g(x)$ ne s'annule pas au voisinage de $x_0$\
Alors $f(x) ~_x_0 g(x) <=> f(x)/g(x) -->_(x -> x_0) 1$

\
=== Démonstration de l'équivalence.

$(=>)$ supposons $f(x) ~_x_0 g(x).$ Par définition $exists epsilon(x)$ qui tend vers 0 en $x_0$ telle que\
$f(x) = (1+epsilon(x))g(x) <=> f(x)/g(x) = 1 + epsilon(x)$

$(=>)$ supposons $"lim"_(x->x_0) f(x)/g(x) = 1$\
Alors $f(x) = g(x) - g(x) + f(x) = (1 - 1 + f(x)/g(x))g(x)$

Posons $epsilon(x) = -1 + f(x)/g(x)$

Alors $f(x) = (1 + epsilon(x))g(x)$ avec $epsilon(x) -->_(x -> x_0) 0$

\
=== Exemples :

1) $f(x) = x + x^2 "     " g(x) = x "     " x_0 = 0$\
$f(x) = (1+x)x = (1+x)g(x) = (1+epsilon(x))g(x) "avec" epsilon(x) = x$

2) $f(x) "et" g(x)$ comme avant $x_0 = +infinity$\
$f(x) tilde.not_(+infinity) g(x) "car" f(x)/g(x) = 1 + x arrow.not_(x -> + infinity) 1$\
Mais $f(x) ~_(+infinity) x^2 "car" f(x)/x^2 = 1/x + 1 -->_(x -> +infinity) 1$

\
\
\
\
\
\
== Fonctions négligeables
\

Soit $x_0 in RR$ ou $x_0 = plus.minus infinity$, $f(x) "et" g(x)$ deux fonctions définies au voisinage de $x_0$

Définition : $f(x)$ est négligeable devant $g(x)$ en $x_0$\
or $exists epsilon(x)$ une fonction telle que $"lim"_(x->x_0) epsilon(x) = 0$ et $f(x) = epsilon(x)g(x)$ (au voisinage de $x_0$)

Dans ce cas on note $f(x) in o_x_0(g)$

=== Exemples

1) $x_0 = 0 "     "f(x) = x² "     " g(x)=x "     " f(x)=epsilon(x)x "   où" epsilon(x) = x -->_(x->x_0) 0$\
$=> x^2 in o_0(x)$

2) $x_0 = +infinity "     " f(x) = ln(x) "     " g(x) = x "     " f(x) = ln(x)/x x = ln(x)/x g(x) -->_(x->+infinity)0$

\
== Exercices

=== Exercice 1:

$f tilde_x_0 phi "     " g ~_x_0 psi $\
Supposons que $phi$ et $psi$ non nulles au voisinage de $x_0$

Comme $phi$ et $psi$ sont de même signe au voisinage de $x_0$, $phi + psi$ est non nulle au voisinage de $x_0$

$(f+g)/(phi + psi) = (((f/phi) times phi) + ((g/psi) times psi))/(phi + psi) -->_(x -> x_0) (phi + psi)/(phi + psi) = 1$

Remarque : Si $phi$ et $psi$ ne sont pas de même signe, cette implication est fausse en général

$phi(x) = -x "     " psi(x) = x "     " x_0 = 0 "     " f(x) = -x + x^2 ~_0 - x "     " g(x) = x ~_0 x$

$f(x) ~ -x "démonstration" f(x)/(-x) = (-x + x^2)/(-x) = 1 - x -->_(x -> 0) 1$

$f(x) + g(x) = x^2 "mais" phi(x) + psi(x) = 0$

A-t-on $x^2 ~_0 0 $ ? Non car $x^2$ n'est pas identiquement nulle au voisinage de 0

Donc $f + g tilde.not_0 phi + psi$

\
=== Exercice 2:

1. $f ~_x_0 c_1 phi "     " g ~_x_0 c_2 phi$ avec $c_1 + c_2 != 0 "   " c_1, c_2 in RR$\
$f+g ~ (c_1 + c_2) phi $ ?

$(f+g)/((c_1 + c_2)phi) = ((f/(c_1 phi)) times c_1 phi + (g/(c_2 phi)) times c_2 phi)/((c_1+c_2)phi) -->_(x -> x_0) (x_1 phi + c_2 phi)/((c_1 + c_2) phi) = 1$

\
2. $f ~_x_0 c_1 phi "     " g ~_x_0 c_2 phi "    avec" c_1 + c_2 = 0 "   " f+g in o_x_0(phi) " ?"$

- Si $phi$ est identiquement nulle au voisinage de $x_0$, $f "et" g$ aussi donc $f+g$ aussi

- Si $phi$ non identiquement nulle au voisinage de $x_0$

$(f+g)/phi = f/phi + g/phi -->_(x->x_0) c_1 + c_2 = 0 "donc" f+g in o_x_0(phi)$

\
=== Exercice 5

1. $n ~_(+infinity) n+1$ oui: $n/(n+1) = n/(n(1 + 1/n)) = 1/(1 + 1/n) ->_(+infinity) 1$

2. $n^2 ~_(+infinity) n^2 + n "oui: " n^2/(n^2+n) = n^2/(n^2(1 + 1/n)) = 1 / (1 + 1/n) -->_(n->+infinity) 1$

3. $ln(n) ~_(+infinity) ln(10^6 n) "oui:" ln(n)/ln(10^6 n) = ln(n)/(ln(10^6) + ln(n)) = ln(n)/(ln(n)(ln(10^6)/ln(n) + 1)) = 1/(ln(10^6)/ln(n) + 1) -->_(+infinity) 1$

4. $e^n ~_(+infinity) e^(n+10^(-6)) "  "$

$e^n/e^(n+10^(-6)) = e^n/(e^n e^(10^(-6))) = 1/e^(10^(-6)) arrow.not_(+infinity) 1$

Donc non.

$e^n ~_(+infinity) e^(2n)$ non $e^n/(e^2n) = 1/e^n -->_(n->+infinity) 0$
