---
deck: math
---


<!-- basicblock-start oid="ObsA1bC2dE3fF4gG5hH6iI7" -->
Def. Vecteur propre, valeur propre, spectre et sous-espace propre (SEP) d'un endomorphisme $u \in \mathcal{L}(E)$::
- **Vecteur propre :** $x \in E \setminus \{0\}$ tel qu'il existe $\lambda \in K$ vérifiant $u(x) = \lambda x$.
- **Valeur propre :** $\lambda \in K$ s'il existe $x \neq 0$ tel que $u(x) = \lambda x$.
- **Spectre $\mathrm{Sp}(u)$ :** Ensemble des valeurs propres de $u$ dans $K$.
- **Sous-espace propre $E_\lambda(u)$ :** $E_\lambda(u) = \mathrm{Ker}(u - \lambda \mathrm{Id}_E)$.
<!-- basicblock-end -->

<!-- basicblock-start oid="ObsB2cD3dE4fF5gG6hH7iJ8" -->
Prop. Action d'un polynôme d'endomorphisme $P(u)$ sur un vecteur propre::
$$
u(x) = \lambda x \implies \forall P \in K[X], \; [P(u)](x) = P(\lambda) \cdot x
$$
<!-- basicblock-end -->

<!-- basicblock-start oid="ObsC3dE4fF5gG6hH7iJ8jK9" -->
Def. Polynôme caractéristique et multiplicité d'une valeur propre d'un endomorphisme::
- **Polynôme caractéristique :** $\chi_u(X) = \det(X \cdot \mathrm{Id}_E - u)$ (ou $\det(\lambda \cdot \mathrm{Id}_E - u)$).
- **Multiplicité $m(\lambda)$ :** Multiplicité de $\lambda$ en tant que racine de $\chi_u(X)$.
<!-- basicblock-end -->

<!-- basicblock-start oid="ObsD4eF5gG6hH7iJ8jK9kL0" -->
Def. Endomorphisme diagonalisable et base propre::
$u \in \mathcal{L}(E)$ est diagonalisable (DZ) s'il existe une base $\mathcal{B}'$ de $E$ formée de vecteurs propres de $u$ (appelée base propre). Dans cette base, $M_{\mathcal{B}'}(u)$ est diagonale.
<!-- basicblock-end -->

<!-- basicblock-start oid="ObsE5fG6gH7hI8jJ9kK0lL1" -->
Th. Caractérisations d'une valeur propre $\lambda \in K$ pour un endomorphisme $u$::
- $\lambda \in \mathrm{Sp}(u)$
- $E_\lambda(u) \neq \{0\}$
- $u - \lambda \cdot \mathrm{Id}_E$ est non bijectif (non injectif)
- $\chi_u(\lambda) = 0$ (les VP sont les racines de $\chi_u$ dans $K$)
<!-- basicblock-end -->

<!-- basicblock-start oid="ObsF6gH7hI8jJ9kK0lL1mM2" -->
Def. Colonne propre, valeur propre, spectre et SEP d'une matrice $A \in \mathcal{M}_n(K)$::
- **Colonne propre :** $X \in \mathcal{M}_{n,1}(K) \setminus \{0\}$ telle qu'il existe $\lambda \in K$ vérifiant $A X = \lambda X$.
- **Valeur propre :** $\lambda \in K$ s'il existe $X \neq 0$ tel que $A X = \lambda X$.
- **Spectre $\mathrm{Sp}_K(A)$ :** Ensemble des valeurs propres de $A$ sur $K$.
- **Sous-espace propre $E_\lambda(A)$ :** $E_\lambda(A) = \mathrm{Ker}(A - \lambda I_n)$.
<!-- basicblock-end -->

<!-- basicblock-start oid="ObsG7hI8jJ9kK0lL1mM2nN3" -->
Prop. Action d'un polynôme de matrice $P(A)$ sur un vecteur propre colonne::
$$
A X = \lambda X \implies A^k X = \lambda^k X \implies \forall P \in K[X], \; [P(A)] X = P(\lambda) \cdot X
$$
<!-- basicblock-end -->

<!-- basicblock-start oid="ObsH8iJ9jK0kL1mM2nN3oO4" -->
Def. Polynôme caractéristique et caractérisations des VP d'une matrice $A \in \mathcal{M}_n(K)$::
- $\chi_A(X) = \det(X I_n - A)$
- $\lambda \in \mathrm{Sp}_K(A) \iff E_\lambda(A) \neq \{0\} \iff A - \lambda I_n \text{ non inversible} \iff \chi_A(\lambda) = 0$
<!-- basicblock-end -->

<!-- basicblock-start oid="ObsI9jK0kL1mM2nN3oO4pP5" -->
Prop. Invariance du polynôme caractéristique::
- Deux matrices semblables ont le même polynôme caractéristique (donc même spectre et mêmes multiplicités).
- $\chi_{{}^t A}(X) = \chi_A(X)$.
<!-- basicblock-end -->

<!-- basicblock-start oid="ObsJ0kL1mM2nN3oO4pP5qQ6" -->
Def. Matrice diagonalisable sur $K$::
$A \in \mathcal{M}_n(K)$ est diagonalisable sur $K$ si elle est semblable dans $\mathcal{M}_n(K)$ à une matrice diagonale $D$ :
$$
A = P D P^{-1} \quad \text{avec } P \in \mathrm{GL}_n(K) \text{ et } D \text{ diagonale}
$$
Les coefficients diagonaux de $D$ sont les valeurs propres de $A$ (avec multiplicité).
<!-- basicblock-end -->

<!-- basicblock-start oid="ObsK1lL2mM3nN4oO5pP6qQ7" -->
Prop. Stabilité de la diagonalisabilité par opérations algébriques::
Si $A$ est diagonalisable ($A = P D P^{-1}$), alors :
- Ses puissances $A^k = P D^k P^{-1}$
- Ses polynômes $Q(A) = P Q(D) P^{-1}$
- Sa transposée ${}^t A = ({}^t P)^{-1} {}^t D {}^t P$
- Son inverse $A^{-1} = P D^{-1} P^{-1}$ (si $A$ est inversible)
sont toutes des matrices diagonalisables avec le même passage $P$ (ou ${}^t P^{-1}$).
<!-- basicblock-end -->

<!-- basicblock-start oid="ObsL2mM3nN4oO5pP6qQ7rR8" -->
Prop. Matrices classiques non diagonalisables::
$$
\begin{pmatrix} 1 & 1 \\ 0 & 1 \end{pmatrix} \quad \text{et} \quad \begin{pmatrix} 0 & 1 \\ 0 & 0 \end{pmatrix}
$$
ne sont **pas** diagonalisables.
<!-- basicblock-end -->

<!-- basicblock-start oid="ObsM3nN4oO5pP6qQ7rR8sS9" -->
Prop. Matrice diagonalisable à valeur propre unique::
- Une matrice diagonalisable n'admettant qu'une seule valeur propre $\lambda$ est nécessairement de la forme $\lambda I_n$.
<!-- basicblock-end -->

<!-- basicblock-start oid="ObsN4oO5pP6qQ7rR8sS9tT0" -->
Th. Théorème spectral (partie matrices symétriques réelles)::
- Toute matrice symétrique réelle ($A \in \mathcal{M}_n(\mathbb{R})$ avec ${}^t A = A$) est diagonalisable sur $\mathbb{R}$.
<!-- basicblock-end -->

<!-- basicblock-start oid="ObsO5pP6qQ7rR8sS9tT0uU1" -->
Prop. Cohérence des éléments propres entre endomorphisme $a$ et sa matrice $A = M_{\mathcal{B}}(a)$::
- $\chi_a(X) = \chi_A(X)$ (mêmes valeurs propres et mêmes multiplicités).
- $a(x) = \lambda x \iff A X = \lambda X$, où $X = M_{\mathcal{B}}(x)$ est la colonne des coordonnées de $x$.
- $a$ est DZ $\iff A$ est DZ.
<!-- basicblock-end -->

---

<!-- basicblock-start oid="ObsP1aB2cC3dD4eE5fF6gG7" -->
Th. Stabilité des sous-espaces propres par commutation::
Si deux endomorphismes $u$ et $v$ commutent ($u \circ v = v \circ u$), alors tout sous-espace propre de l'un est stable par l'autre.
<!-- basicblock-end -->

<!-- basicblock-start oid="ObsQ2bC3dD4eE5fF6gG7hH8" -->
Th. Somme directe des sous-espaces propres::
- Les sous-espaces propres d'un endomorphisme $u \in \mathcal{L}(E)$ sont toujours en somme directe.
<!-- basicblock-end -->

<!-- basicblock-start oid="ObsR3cD4dE5eF6fG7gH8hI9" -->
Th. Liberté d'une famille de vecteurs propres associés à des valeurs propres distinctes::
- Des vecteurs propres associés à des valeurs propres distinctes forment toujours une famille libre.
<!-- basicblock-end -->

<!-- basicblock-start oid="ObsS4dE5eF6fG7gH8hI9iJ0" -->
Th. Coefficients remarquables du polynôme caractéristique::
Pour $A \in \mathcal{M}_n(K)$ :
$$
\chi_A(X) = X^n - \mathrm{tr}(A) X^{n-1} + \dots + (-1)^n \det(A)
$$
<!-- basicblock-end -->

<!-- basicblock-start oid="ObsT5eF6fG7gH8hI9iJ0jK1" -->
Prop. Propriétés sur le polynôme caractéristique et le spectre::
- $\sum_{\lambda \in \mathrm{Sp}(u)} m(\lambda) \le n$, avec égalité si et seulement si $\chi_u$ est scindé sur $K$.
- Les valeurs propres complexes d'une matrice à coefficients réels sont deux à deux conjuguées (avec la même multiplicité).
- Si $K = \mathbb{R}$ et $\dim(E) = n$ est impair, alors tout endomorphisme $u \in \mathcal{L}(E)$ possède au moins une valeur propre réelle.
<!-- basicblock-end -->

<!-- basicblock-start oid="ObsU6fG7gH8hI9iJ0jK1kL2" -->
Th. Polynôme caractéristique d'un endomorphisme induit::
Soit $F$ un sous-espace vectoriel stable par $u \in \mathcal{L}(E)$ et $u_F$ l'endomorphisme induit par $u$ sur $F$.
Alors $\chi_{u_F}(X)$ divise $\chi_u(X)$.
<!-- basicblock-end -->

<!-- basicblock-start oid="ObsV7gH8hI9iJ0jK1kL2lL3" -->
Th. Encadrement de la dimension d'un sous-espace propre (dimension a priori)::
Soit $\lambda \in \mathrm{Sp}(u)$ une valeur propre de $u$.
$$
1 \le \dim(E_\lambda(u)) \le m(\lambda)
$$
En particulier, si $\lambda$ est une valeur propre simple ($m(\lambda) = 1$), alors $\dim(E_\lambda(u)) = 1$.
<!-- basicblock-end -->

<!-- basicblock-start oid="ObsW8hI9iJ0jK1kL2lL3mM4" -->
Th. Condition nécessaire de diagonalisabilité::
Si $u \in \mathcal{L}(E)$ est diagonalisable sur $K$, alors son polynôme caractéristique $\chi_u$ est scindé sur $K$.
<!-- basicblock-end -->

<!-- basicblock-start oid="ObsX9iJ0jK1kL2lL3mM4nN5" -->
Th. Déterminant et trace exprimés avec les valeurs propres ($\chi_A$ scindé)::
Si $\chi_A(X)$ est scindé sur $K$, alors :
- $\det(A) = \prod_{\lambda \in \mathrm{Sp}(A)} \lambda^{m(\lambda)}$
- $\mathrm{tr}(A) = \sum_{\lambda \in \mathrm{Sp}(A)} m(\lambda) \cdot \lambda$
<!-- basicblock-end -->

<!-- basicblock-start oid="ObsY0jK1kL2lL3mM4nN5oO6" -->
Th. Les 3 conditions nécessaires et suffisantes (CNS) de diagonalisabilité::
Soit $u \in \mathcal{L}(E)$ un endomorphisme d'un espace de dimension finie. Sont équivalents :
1. **CNS 1 (Supplémentarité) :** $E = \bigoplus_{\lambda \in \mathrm{Sp}(u)} E_\lambda(u)$
2. **CNS 2 (Équation dimensionnelle) :** $\dim(E) = \sum_{\lambda \in \mathrm{Sp}(u)} \dim(E_\lambda(u))$
3. **CNS 3 (Multiplicités) :** $\chi_u$ est scindé sur $K$ et $\forall \lambda \in \mathrm{Sp}(u), \; \dim(E_\lambda(u)) = m(\lambda)$
<!-- basicblock-end -->

---

