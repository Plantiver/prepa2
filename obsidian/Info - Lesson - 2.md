---
deck: info
noteId: 1789748649054
---


<!-- basicblock-start oid="ObsoFoU2GJiaUWCzmwP72ZzE" -->
Def. Automate fini::
$$
A=(Q,\Sigma,I,F,\delta)\text{, où }\begin{cases}
Q\text{ est fini} \cr
I\subset Q \cr
F\subset Q \cr
\delta \subset Q\times\Sigma \times Q
\end{cases}
$$
<!-- basicblock-end -->
<!-- basicblock-start oid="ObsyoUFhQcJs8jjZN2rMddrO" -->
Def. Chemin sur un automate::
$$
\text{Un chemin dans un automate }A\text{ sur un chemin }u=a_{1}a_{2}\dots a_{n}\in\Sigma^{\star}\text{ est une suite d'état }(q_{i})\in Q,\;q_{0}\underset{ a_{0} }{ \to }q_{1}\underset{ a_{1} }{ \to }\dots \underset{ a_{n} }{ \to }q_{n+1}
$$
<!-- basicblock-end -->
<!-- basicblock-start oid="ObsvVUQy87fKG8NcFOXFeBXd" -->
Def. Un chemin $q_{0}\underset{ u }{ \to }^{\star}q_{n}$ est acceptant ssi::
$$
\begin{cases}
q_{0}\in I \cr
q_{n}\in F
\end{cases}
$$
<!-- basicblock-end -->
<!-- basicblock-start oid="ObsNSn5Qmh5BJFsA6JyQsk2n" -->
Def. Langage $L$ accepté par un automate $A$::
$$
L=\mathrm{Set}( u\in\Sigma^{\star},\;\exists (q_{i})\in Q,\;\underset{ u:q_{i} }{ \to }\text{ est acceptant sur }A )
$$
<!-- basicblock-end -->
<!-- basicblock-start oid="ObsqgAP3I0MhvIH74U7ikmVw" -->
Def. Etat accessible de $A=(Q,\Sigma,I,F,\delta)$::
$$
\mathrm{Set}( q\in Q,\;\exists (q_{i})\in Q,\;(q_{i})q\in Q^{\star} )
$$
<!-- basicblock-end -->
<!-- basicblock-start oid="ObstYVwSnQmj3Vb1cmS4KLt1" -->
Def. Etat co-accessible de $A=(Q,\Sigma,I,F,\delta)$::
$$
\mathrm{Set}( q\in Q,\;\exists (q_{i})\in Q,\;q(q_{i})\in Q^{\star} )
$$
<!-- basicblock-end -->
<!-- basicblock-start oid="Obs43GyEQI9rqbVjTyS1rhwL" -->
Def. Etat utile de $A=(Q,\Sigma,I,F,\delta)$::
Les états accessibles et co-accessible de $A$.
<!-- basicblock-end -->
<!-- basicblock-start oid="Obs8LBu5QjEUoUIRFnSvP3aP" -->
Def. Un automate est émondé ssi::
tout ses états sont accessibles et co-accessible.
<!-- basicblock-end -->
<!-- basicblock-start oid="ObsKMOLvaygGN9NCXj3aGGHP" -->
Meth. Émonder un automate::
On supprime tout les états qui ne sont pas accessible ou co-accessible.
<!-- basicblock-end -->
<!-- basicblock-start oid="ObsXWKp10rW1Dn4wNURhnXAD" -->
Def. Un automate $A=(Q,\Sigma,I,F,\delta)$ est complet ssi::
$$
\forall(q_{i},a)\in Q\times\Sigma ,\;\delta (q_{i},a)\not=\emptyset.
$$
<!-- basicblock-end -->
<!-- basicblock-start oid="Obs4fEanLV3PHFL9VcKuwIxd" -->
Meth. Compléter un automate::
On rajoute un puits, accessible via les lettres manquantes dans les états qui ne les possèdes pas, et qui boucle sur lui-même avec n'importe quel lettre.
<!-- basicblock-end -->
<!-- basicblock-start oid="Obs11Gl0I4T3ENtlPWaWAp19" -->
Def. Une $\varepsilon$-transition est::
une transition entre $q_{i}$ et $q_{j}$ qui ne lit aucune lettre.
<!-- basicblock-end -->
<!-- basicblock-start oid="ObsNSs1WmDrYLwenLcQx5ZQ2" -->
Meth. Elimination des $\varepsilon$-transition::
On construit un graphe avec les mêmes états, mais si $q_{i}\underset{ \varepsilon }{ \to }^{\star}q_{j}$, alors:
- Si $q_j\in F$, alors $q_{i}\in F$
- Si $q_{i} \in I$, alors $q_{j}\in I$
- Si $q_{j}\underset{ a }{ \to }q'$, alors $q_{i}\underset{ a }{ \to }q'$.
<!-- basicblock-end -->
<!-- basicblock-start oid="ObsFmLvaptfy4aWXAKet6hdq" -->
Def. Un automate $A=(Q,\Sigma,I,F,\delta)$ est déterministe ssi::
$$
\forall (q_{i},a)\in Q\times\Sigma,|\delta (q_{i},a)|\leq1
$$
<!-- basicblock-end -->
<!-- basicblock-start oid="ObsxPEOjbJWBT0xqHPezazBA" -->
Def. Déterminisé $A_{D}=(P(Q),\Sigma,I,F_{D},\Delta)$ d'un automate $A=(Q,\Sigma,I,F,\delta)$::
- Le super-état initial $I$ est l'ensemble des états initiaux de $A$
- Les super-état finaux $F_{D}=\mathrm{Set}( P,\;P\cap F\not=\emptyset )$ sont les super-états qui contiennent au moins un état final
- Les transitions sont $\Delta=\mathrm{Set}( P\underset{ a }{ \to }P',\;P'=\mathrm{Set}( q\in Q,\;\exists p \in P,\;p\underset{ a }{ \to }q ))$
<!-- basicblock-end -->
<!-- basicblock-start oid="Obsw9qexV40SzUcz1Zvlcv0o" -->
Meth. Construction du déterminisé $A_{D}=(P(Q),\Sigma,I,F_{D},\Delta)$ d'un automate $A=(Q,\Sigma,I,F,\delta)$::
- On construit le super-état initial
- On construit l'ensemble des états accessibles par les super-état que l'on a déjà vu
- On itère jusqu'à ne plus avoir de nouveau super-état.
<!-- basicblock-end -->
<!-- basicblock-start oid="ObsokI90NbyChpWkWNUxIuiF" -->
Prop. Le déterminisé d'un automate est::
- Déterministe (pratique, n'est-ce pas)
- Complet
- Entièrement accessible.
<!-- basicblock-end -->
<!-- basicblock-start oid="Obsm3sW7oP9xKupyQHTA7VgA" -->
Def. Un automate $A=(Q,\Sigma,I,F,\delta)$ est normalisé ssi::
- $|I|=1$
- $|F|=1$.
<!-- basicblock-end -->
<!-- basicblock-start oid="ObsebCZvur7flD6PrPImZPDu" -->
Meth. Construction du complémentaire de $A=(Q,\Sigma,I,F,\delta)$::
- Suppression des $\varepsilon$-transition
- Determinisation
- Inversion des états finaux.
<!-- basicblock-end -->
<!-- basicblock-start oid="ObsovHFOa5iyGlgvm5jkTftT" -->
Th. de Kleene::
Un langage $L$ est régulier ssi $\exists A=(Q,\Sigma,I,F,\delta)$ tq $L=\mathscr{L}(A)$.
<!-- basicblock-end -->
<!-- basicblock-start oid="Obs8LG6EYpnY9fJUbexDWUMz" -->
Def. Expression régulière linéaire::
$e$ est linéaire ssi tout symbole de $\Sigma$ y apparaît au plus 1 fois.
<!-- basicblock-end -->
<!-- basicblock-start oid="ObsZ8aznLlulMYVf7Q59Q9VY" -->
Def. Langage local::
$L$ est local sur $\Sigma$ ssi $\exists P,D\subset\Sigma, \exists N\subset \Sigma^{2},\;L\setminus \mathrm{Set}( \varepsilon )=(P\Sigma^{\star}\cap\Sigma^{\star}D)\setminus(\Sigma^{\star}N\Sigma^{\star})$
<!-- basicblock-end -->
<!-- basicblock-start oid="ObsdUkmtpFagJsekxYCe3WaE" -->
Th. Langage d'une expression régulière linéaire::
Le langage d'une expression régulière linéaire est local.
<!-- basicblock-end -->
<!-- basicblock-start -->
Def. Automate fini généralisé::
Les étiquettes sont des expressions régulière, et il n'y a qu'une seule flèche.
<!-- basicblock-end -->
<!-- basicblock-start -->
Th. Lemme de l'étoile::
Soit $L$ régulier, alors:
$$
\exists N\in \mathbb{N},\;\forall u\in L,\;|u|\geq N,\;\exists xyz=u ,\;\begin{cases}
y\not=\varepsilon \cr
|xy|<N \cr
\mathscr{L}(xy^{\star}z)\subset L
\end{cases}
$$
<!-- basicblock-end -->


# Exo
1. 
Si $y=a^{k}$, alors l'expression $xy^{\star}z$ n'est pas dans $L$.
Si $y=b$, non plus

2. Palindrome
Supposons $(\star)$ vrai pour $N$.
Prenons $u=a^{N}ba^{N}$.
Alors $y=a^{k}$, et donc $xy^{\star}z$ n'est pas un palindrome.














