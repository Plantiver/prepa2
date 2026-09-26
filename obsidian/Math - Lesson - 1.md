---
deck: math
noteId: 1789748649304
---

<!-- basicblock-start oid="ObsNwnuvcFNalOxSVwfx4AYD" -->
Def. $(G,\star)$ est un groupe ssi::
$$
\begin{array}
\text{(i)}\;&\star \;\text{est une l.c.i.}\cr
\text{(ii)}\;&\star\;\text{est associative}\cr
\text{(iii)}\;&\star \;\text{possède un neutre dans}\; G\cr
\text{(iv)}\;& \text{Tout élément}\;g\in G\;\text{possède un inverse}\;g^{-1}\in G.
\end{array}
$$
<!-- basicblock-end -->

<!-- basicblock-start oid="Obsuec4TgBKVD8gbFTiGOapG" -->
Prop. Construction de nouveau groupe::
$$
\begin{array}
\text{(i)}\;&\text{Si }(G,\star_{1}) \text{ et } (H,\star_{2})\text{ sont des groupes, alors } (G\times H,\star_{1}\times \star_{2})\text{ est un groupe}\cr
\text{(ii)}\;&\text{Si }(G,\star) \text{ est un groupe et } f \text{ est un morphise de groupe, alors } G/Ker f\text{ est un groupe}\cr
\text{(iii)}\;& \text{Produit libre: hors programme...}
\end{array}
$$
<!-- basicblock-end -->

<!-- basicblock-start oid="ObsoKAao95tB9E3lZjoTmaUO" -->
Carac. Sous-Groupe $H$ d'un groupe $(G,\star)$::
$$
\begin{array}
\text{(i)}\;&n_{g}\in H\cr
\text{(ii)}\;&\forall(x,y)\in H^2,\;x\star y\in H\cr
\text{(iii)}\;&\forall h\in H,\;h^{-1}\in H.
\end{array}
$$
<!-- basicblock-end -->

<!-- basicblock-start oid="ObsIdP7sQg4jJbC09BZsNlPG" -->
Th. Les sous-groupes de $\mathbb{Z}$ sont de la forme::
$$a\mathbb{Z},\;a\in \mathbb{Z}.$$
<!-- basicblock-end -->

<!-- basicblock-start oid="Obs7yDoGZfFrnhZUA0etpAP5" -->
Th. Intersection de $\begin{cases}H_{1} <G\cr H_{2}<G\end{cases}$::
$$
H_{1} \cap H_{2} <G
$$
<!-- basicblock-end -->

<!-- basicblock-start oid="Obsn7YDq4tb7x9A0fP1rE1Ei" -->
Def. Soit $x \in(G,\star)$, alors le sous groupe engendré par $x$ est::
$$
<x> = \bigcap_{x \in H<G}^{}H.
$$
<!-- basicblock-end -->


<!-- basicblock-start oid="Obs6n8NevpgQQIqwgmiNKbla" -->
Def. $(G,\star)$ est dit monogène ssi::
$$
\exists x \in G,\;G = <x>
$$
<!-- basicblock-end -->

<!-- basicblock-start oid="Obs4wvPTYSHMedf5QMBrSsxQ" -->
Def. $f:(G,\star_{1})\to(H,\star_{2})$ est un morphisme de groupe ssi::
$$
\forall(x,y)\in G,\;f(x\star_{1} y)=f(x)\star_{2}f(y)
$$
<!-- basicblock-end -->

<!-- basicblock-start oid="ObsqM8Rr1moICqojdjXQ3iAb" -->
Def. Un endomorphisme est::
$$
\text{Un morphisme }f:E\to E
$$
<!-- basicblock-end -->
<!-- basicblock-start oid="ObsMDYHhfCylnxNT4UDUwAqJ" -->
Def. Un isomorphisme est::
$$
\text{Un morphisme bijectif}
$$
<!-- basicblock-end -->
<!-- basicblock-start oid="ObsikON1l8Es0I38jolIOiJm" -->
Def. Un automorphisme est::
$$
\text{Un endomorphisme bijectif}
$$
<!-- basicblock-end -->
<!-- basicblock-start oid="ObsHKkBvrYcyovjIOGA4F01m" -->
Def. $E\simeq F$::
$$
\exists f:E\leftrightsquigarrow F
$$
<!-- basicblock-end -->

<!-- basicblock-start oid="ObsOl58mo99LmRpEVsYmaoHr" -->
Def. Noyau de $f:E\to F$::
$$
\mathrm{Ker}f = \mathrm{Set}( x \in E,\;f(x)=0_{F} ).
$$
<!-- basicblock-end -->
<!-- basicblock-start oid="ObsZgQaYJe1ASitG3njmpqXi" -->
Def. Image de $f:E\to F$::
$$
\mathrm{Im}f = f(E).
$$
<!-- basicblock-end -->
<!-- basicblock-start oid="Obs9C5fK8yvwrYLEvDaPiOoL" -->
Prop. Soit $f:G\to H$ un morphisme de groupe, alors::
$$
\begin{array}
\text{(i)}\;&f(n_{G})=n_{H}\cr
\text{(ii)}\;&\forall g\in G,f(g^{-1})=(f(g))^{-1}\cr
\text{(iii)}\;&H'<H\implies f(H')<G\cr
\text{(iv)}\;&G'<G\implies f^{-1}(G')<H.
\end{array}
$$
<!-- basicblock-end -->
<!-- basicblock-start oid="ObsMXFrBaYECMMXQpBaEjDqa" -->
Th. (du Noyau) Soit $f:G\to H$ un morphisme de groupe, alors sont équivalent::
$$
\begin{array}
\text{(i)}\;&f\text{ est injectif}\cr
\text{(ii)}\;&\mathrm{Ker}f = \mathrm{Set}( 0_{G} ).
\end{array}
$$
<!-- basicblock-end -->
<!-- basicblock-start oid="ObsoBVv5dwWK2h18CkQnMIIu" -->
Th. (Réciproque d'un isomorphisme) Soit $f:G\leftrightsquigarrow H$ un morphisme, alors::
$$
f^{-1} \text{ est un morphisme.}
$$
<!-- basicblock-end -->
<!-- basicblock-start oid="ObskKSoxYf6HgkK95vH5khmA" -->
Def. $(A,+,\times)$ est un anneau ssi::
$$
\begin{array}
\text{(i)}\;&(A,+)\text{ est un groupe abélien}\cr
\text{(ii)}\;&(A,\times)\text{ est un monoide}\cr
\text{(iii)}\;&\times\text{ est distributive sur }+.
\end{array}
$$
<!-- basicblock-end -->
<!-- basicblock-start oid="Obs18XO7JZwBxM6rtiprb5a8" -->
Def. Soit $(a,b)\in(A,+,\times)^{2}$, alors $a$ divise $b$ ssi::
$$
a|b:=\exists k\in A,\;b=k\cdot a.
$$
<!-- basicblock-end -->
<!-- basicblock-start oid="ObsXLPj8oUx1ey2bub2L4sJq" -->
Def. Soit $a\in(A,+,\times)$, alors $a$ est inversible ssi::
$$
\exists b\in A,\;a\times b=b\times a=1_{A}.
$$
<!-- basicblock-end -->
<!-- basicblock-start oid="ObsD7jE5B8EajZlYUpEL2HQ2" -->
Def. Soit $(A,+,\times)$ un anneau, alors le groupe des inversibles de A est::
$$
A^{\times}=\mathrm{Set}( x \in A,\;\exists x^{-1}\in A ).
$$
<!-- basicblock-end -->
<!-- basicblock-start oid="ObsfwWY2Ewfn3yKqkFFGvGNf" -->
Def. Soit $(A,+,\times)$ un anneau, alors $A$ est intègre ssi::
$$
\forall(a,b)\in A^{2},\;a\times b=0_{A}\implies \begin{cases}
a=0_{A}\cr b=0_{A}
\end{cases}
$$
<!-- basicblock-end -->
<!-- basicblock-start oid="Obs62wV6amVMXQpgoY9N3GJ3" -->
Def. Soit $(A,+,\times)$ un anneau, $A$ est un corps ssi::
$$
\begin{array}
\text{(i)}\;&A\text{ est un anneau commutatif}\cr
\text{(ii)}\;&A^{\times} = A\setminus \mathrm{Set}( 0_{A} ).
\end{array}
$$
<!-- basicblock-end -->
<!-- basicblock-start oid="ObsCrs4ZKW7ZYAM4mfE7db1c" -->
Form. Différence de puissance, soit $(A,+,\times)$ un anneau commutatif, on a::
$$
\forall(a,b,n)\in A^{2}\times \mathbb{N},a^{n}-b^{n}=(a-b)\sum_{k=0}^{n-1}a^{k}b^{n-k-1}.
$$
<!-- basicblock-end -->
<!-- basicblock-start oid="Obs939gbzAKRuaD3ekB6malj" -->
Form. Binôme de Newton, soit $(A,+,\times)$ un anneau commutatif, on a::
$$
\forall(a,b,n)\in A^{2}\times \mathbb{N},\;(a+b)^{n}=\sum_{k=0}^{n}a^{k}b^{n-k}.
$$
<!-- basicblock-end -->

<!-- basicblock-start oid="ObstGuRJQ5dtevdLa4qMH6TK" -->
Def. $f$ est une bijection ssi::
- $f$ est injective
- $f$ est surjective.
<!-- basicblock-end -->

<!-- basicblock-start oid="Obsn0nUW6AugC6FxlMHaVnzW" -->
Prop. Sur/Inj: Soient $E,F,G$ des ensembles, et $f:E\to F,g:F\to G$, alors::
$$
\begin{array}
\text{(i)}&\; g \circ f \; \text{injective} \implies f\; \text{injective} \cr
\text{(ii)}&\; g \circ f \; \text{surjective} \implies g\; \text{surjective}.
\end{array}
$$
<!-- basicblock-end -->

<!-- basicblock-start oid="ObsRs7b2LBOMX9Bc3tKsOwXi" -->
Def. Soit $(A,+,\times)$ un anneau, $a\in A$ est nilpotent ssi::
$$
\exists n\in \mathbb{N},\;a^{n}=0_{A}.
$$
<!-- basicblock-end -->
<!-- basicblock-start oid="Obs7tR5AYbvP9VlULH21FnAI" -->
Prop. Construction de nouveaux anneaux::
- Par produit
- Noyau d'un morphisme d'anneau
<!-- basicblock-end -->
<!-- basicblock-start oid="ObsDhiteosIuwQ3a5ckPTjEH" -->
Def. $B\subset(A,+,\times)$ est un sous-anneau de $A$
<!-- basicblock-end -->
<!-- basicblock-start oid="ObsJ2C7DXi9ohcqVTPqxtKwv" -->
Def. $f:A\to A'$ est un morphisme d'anneau ssi::
- $f(1_{A})=1_{A'}$
- $f$ transforme les lois respectives.
<!-- basicblock-end -->
<!-- basicblock-start oid="Obs39H84qdZ9iInqsDEH5hzz" -->
Prop. Soit $f:A\to A'$ un morphisme d'anneau, alors::
- $a\in A^{\times}\implies f(a)\in A'^{\times}\text{ et }f(a)^{-1}=f(a^{-1})$
- $B<A\implies f(B)<A'$
- $B<A'\implies f^{-1}(B)<A$.
<!-- basicblock-end -->
<!-- basicblock-start oid="ObsWWIkEsPgrYuGtdfsjRlp3" -->
Def. Idéal::
$$
I\subset A,\;\begin{cases}
(I,+)<(A,+)\cr
AI\subset I
\end{cases}.
$$
<!-- basicblock-end -->
<!-- basicblock-start oid="ObsejFseqSEhIBjHyqKqrKTf" -->
Prop. Idéal::
- Somme et intersection d'idéal reste un idéal
- Si $f$ est un morphisme d'anneau, $\mathrm{Ker}f$ est un idéal
- Si $I$ est un idéal de $A$, $A/I$ est un anneau
- Si $b\in A^{\times}$ est dans $I$, alors $I=A$.
<!-- basicblock-end -->
<!-- basicblock-start oid="ObscbZrnyX8EqJfTjGpGNMCG" -->
Def. Idéal principal::
$$
I=bA,\;b\in A.
$$
<!-- basicblock-end -->
<!-- basicblock-start oid="ObsSq5D6IJR10ecICon95YMj" -->
Def. Anneau principal::
Un anneau dont tout les idéaux sont principaux.
<!-- basicblock-end -->
<!-- basicblock-start oid="ObsXT42Ur0MDUqiCfzaL9I0s" -->
Def. Idéal propre::
Un idéal $I\subset A$ mais $I\not=A$.
<!-- basicblock-end -->
<!-- basicblock-start oid="Obss8sZDhYFiozNiy2fM9WVP" -->
Def. Idéal maximal::
Un idéal propre contenu dans aucun autre idéal propre de l'anneau.
<!-- basicblock-end -->
<!-- basicblock-start oid="Obs0PF5IwY1pBMqi1TcmOyNz" -->
Def. $a$ et $b$ sont associés sur $A$ intègre::
$$
\exists k\in A^{\times},\;a=kb.
$$
<!-- basicblock-end -->
<!-- basicblock-start oid="Obsv51HHaiDIFxQ4Tq8jFYvL" -->
Prop. Taylor polynôme::
$$
\begin{flalign*}
&&&&P(X+a)&=\sum_{k=0}^{n}\frac{P^{(k)}(a)}{k!}X^{k}&&\cr
\implies&&&&P(X)&=\sum_{k=0}^{n}\frac{P^{(k)}(a)}{k!}(X-a)^{k}.&&&&&&&&&&\cr
\end{flalign*}
$$
<!-- basicblock-end -->
<!-- basicblock-start oid="ObslC8DSvFwc4Svo1l05If6o" -->
Th. Division Euclidienne::
$$
\forall(A,B)\in\mathbb{K}[X]^{\star^{2}},\;\exists!(Q,R)\in \mathbb{K}[X]^{2},\;\begin{cases}
A=BQ+R \cr
\mathrm{deg}R<\mathrm{deg}B
\end{cases}.
$$
<!-- basicblock-end -->
<!-- basicblock-start oid="ObsDiLLDRzF9HvOrEPdXnUFV" -->
Th. Equivalence racine divisibilité::
$$
\begin{array}
\text{(i)}\;&P(\alpha)=0\\
\text{(ii)}\;&(X-\alpha)|P.
\end{array}
$$
<!-- basicblock-end -->
<!-- basicblock-start oid="ObsW2GS4ghs6gNP7JUf9CWq7" -->
Def. Ordre de multiplicité d'une racine::
$$
\begin{array}
\text{(i)}\;&P^{(m-1)}(\alpha)=0 \text{ et }P^{(m)}(\alpha)\not=0\\
\text{(ii)}\;&(X-\alpha)^{m-1}|P \text{ et }(X-\alpha)^{m}\not| P.
\end{array}
$$
<!-- basicblock-end -->
<!-- basicblock-start oid="ObsD3akoMicYpPSIh74NmyqA" -->
Def. Racine simple et multiple::
- $\alpha$ est racine simple si $m_{P}(\alpha)=1$
- $\alpha$ est racine multiple si $m_{P}(\alpha)>1$.
<!-- basicblock-end -->
<!-- basicblock-start oid="ObsRK1owGNNvlPvGiBvzuu0a" -->
Def. $P$ est scindé sur $\mathbb{K}$ ssi::
$$
\exists(\alpha_{i})\in \mathbb{K}^{n},\;P=a_{n}\prod_{i=1}^{n}(X-\alpha_{i}).
$$
<!-- basicblock-end -->
<!-- basicblock-start oid="ObsJAAHu1EWJzZ653KU2ThSc" -->
Th. d'Alembert Gauss::
$$
\forall P\in \mathbb{C}[X],\;\mathrm{deg}P\geq 1,\;\exists\alpha \in \mathbb{C},\;(X-\alpha)|P
$$
<!-- basicblock-end -->
<!-- basicblock-start oid="ObsYSbGvmxRPqi9HSd0dAeJa" -->
Th. Formule de Viète::
$$
\forall k\in[1;n],\;\sigma_{k}=\sum_{I\in \mathscr{P}_{k}([1;n])}\prod_{i\in I}\alpha_{i}=(-1)^{k}\frac{a_{n-k}}{a_{n}}.
$$
<!-- basicblock-end -->
<!-- basicblock-start oid="ObsgLH5hWHhtyMZVvgtbLH2w" -->
Prop. $P\in \mathbb{R}[X]$, alors::
- Ses racines complexes sont deux à deux conjugués
- Si $\mathrm{deg}P\in2\mathbb{Z}+1$,alors $P$ possède une racine réelle.
<!-- basicblock-end -->
<!-- basicblock-start oid="ObsRBZNcNAJErSn6iutSLXsS" -->
Def. PPCM de $a$ et $b$ dans $A$::
$$
a\lor b\in A,\;aA\cap bA=(a\lor b)A.
$$
<!-- basicblock-end -->
<!-- basicblock-start oid="ObseLvZUajhc3AOPwscKFymd" -->
Def. PGCD de $a$ et $b$ dans A::
$$
a\wedge b\in A,\;aA+bA=(a\wedge b)A.
$$
<!-- basicblock-end -->
<!-- basicblock-start oid="ObsgRqgT6sVl28kXhGk9oIRB" -->
Th. de Bézout::
$$
\forall(a,b)\in A^{2},\exists(u,v)\in A^{2},\;au+bv=a\wedge b.
$$
<!-- basicblock-end -->
<!-- basicblock-start oid="ObsLH74gv5MfXqPLbkF3k9ro" -->
Th. de Gauss::
$$
\begin{cases}
a|bc\cr
a\wedge b=1
\end{cases}\implies a|c.
$$
<!-- basicblock-end -->
<!-- basicblock-start oid="Obshyum86iFLltwM6E2Hi4hI" -->
Def. Polynôme de Lagrange::
$$
\mathrm{Set}( a_{i} )\in \mathbb{K},L_{i}=\prod_{j\in[1,n]\setminus \mathrm{Set}( i )}\frac{X-a_{j}}{a_{i}-a_{j}}
$$
<!-- basicblock-end -->
