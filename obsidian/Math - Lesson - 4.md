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

<!-- basicblock-start oid="ObsA1bC2dE3fF4gG5hH6iI7" -->
Def. Ensemble convexe et fonction convexe::
- **Ensemble convexe :** $S \subset E$ est convexe si pour tous $A, B \in S$, le segment $[A,B] \subset S$, c'est-à-dire :
  $$
  \forall (A,B) \in S^2, \; \forall t \in [0,1], \quad t A + (1-t) B \in S
  $$
- **Fonction convexe :** $f : I \to \mathbb{R}$ est convexe si :
  $$
  \forall (x,y) \in I^2, \; \forall \lambda \in [0,1], \quad f(\lambda x + (1-\lambda)y) \le \lambda f(x) + (1-\lambda) f(y)
  $$
<!-- basicblock-end -->

<!-- basicblock-start oid="ObsB2cD3dE4fF5gG6hH7iJ8" -->
Th. Inégalité de Jensen et Théorème des trois pentes::
- **Inégalité de Jensen :** $f : I \to \mathbb{R}$ est convexe ssi pour tout $n \ge 2$, pour tous $x_1, \dots, x_n \in I$ et tous $\lambda_1, \dots, \lambda_n \in \mathbb{R}^+$ tels que $\sum_{i=1}^n \lambda_i = 1$ :
  $$
  f\left(\sum_{i=1}^n \lambda_i x_i\right) \le \sum_{i=1}^n \lambda_i f(x_i)
  $$
- **Théorème des trois pentes :** $f$ est convexe ssi $\forall (a,b,c) \in I^3$ avec $a < b < c$ :
  $$
  \frac{f(b)-f(a)}{b-a} \le \frac{f(c)-f(a)}{c-a} \le \frac{f(c)-f(b)}{c-b}
  $$
<!-- basicblock-end -->

<!-- basicblock-start oid="ObsC3dE4fF5gG6hH7iJ8jK9" -->
Def. Norme et espace vectoriel normé (evn)::
Une **norme** sur un $K$-espace vectoriel $E$ est une application $\|\cdot\| : E \to \mathbb{R}$ vérifiant :
1. **Positivité :** $\forall x \in E, \; \|x\| \ge 0$.
2. **Homogénéité :** $\forall \lambda \in K, \forall x \in E, \; \|\lambda x\| = |\lambda| \cdot \|x\|$.
3. **Séparation :** $\|x\| = 0 \implies x = 0_E$.
4. **Inégalité triangulaire :** $\forall (x,y) \in E^2, \; \|x+y\| \le \|x\| + \|y\|$.
Un **evn** est le couple $(E, \|\cdot\|)$.
<!-- basicblock-end -->

<!-- basicblock-start oid="ObsD4eF5gG6hH7iJ8jK9kL0" -->
Prop. Seconde inégalité triangulaire, parties et fonctions bornées, boules::
- **Seconde inégalité triangulaire :** $\forall (x,y) \in E^2, \; | \|x\| - \|y\| | \le \|x - y\|$.
- **Partie bornée :** $X \subset E$ est bornée s'il existe $M \in \mathbb{R}^+$ tel que $\forall x \in X, \; \|x\| \le M$.
- **Fonction bornée :** $f : X \to E$ est bornée si $\|f\|$ est majorée. On note $\mathcal{B}(X,E)$ l'ensemble des fonctions bornées de $X$ dans $E$.
- **Boule fermée / ouverte :** 
  $$
  \overline{B}(x,\epsilon) = \{y \in E, \; \|y-x\| \le \epsilon\}, \quad B(x,\epsilon) = \{y \in E, \; \|y-x\| < \epsilon\}
  $$
  Les boules sont toujours bornées et connexes/convexes.
<!-- basicblock-end -->

<!-- basicblock-start oid="ObsE5fG6gH7hI8jJ9kK0lL1" -->
Th. Normes usuelles sur $K^n$ dans une base::
Soit $\mathcal{B} = (e_1, \dots, e_n)$ une base de $E$ et $x = \sum_{i=1}^n x_i e_i$ :
- **Norme $N_1$ :** $N_1(x) = \|x\|_1 = \sum_{i=1}^n |x_i|$.
- **Norme $N_2$ (euclidienne usuelle) :** $N_2(x) = \|x\|_2 = \sqrt{\sum_{i=1}^n |x_i|^2}$.
- **Norme $N_\infty$ (sup) :** $N_\infty(x) = \|x\|_\infty = \max_{1 \le i \le n} |x_i|$.
<!-- basicblock-end -->

<!-- basicblock-start oid="ObsF6gH7hI8jJ9kK0lL1mM2" -->
Th. Normes usuelles sur $\mathcal{C}^0([a,b], K)$::
Soit $f \in \mathcal{C}^0([a,b], K)$ :
- **Norme $N_1$ (convergence en moyenne) :** $N_1(f) = \|f\|_1 = \int_a^b |f(t)| \, \mathrm{d}t$.
- **Norme $N_2$ (moyenne quadratique) :** $N_2(f) = \|f\|_2 = \sqrt{\int_a^b |f(t)|^2 \, \mathrm{d}t}$.
- **Norme $N_\infty$ (convergence uniforme / sup) :** $N_\infty(f) = \|f\|_\infty = \sup_{t \in [a,b]} |f(t)|$.
<!-- basicblock-end -->

<!-- basicblock-start oid="ObsG7hI8jJ9kK0lL1mM2nN3" -->
Def. Normes équivalentes::
Deux normes $N$ et $N'$ sur un $K$-ev $E$ sont équivalentes s'il existe deux constantes $\alpha, \beta > 0$ telles que :
$$
\forall x \in E, \quad N(x) \le \alpha N'(x) \quad \text{et} \quad N'(x) \le \beta N(x)
$$
<!-- basicblock-end -->

<!-- basicblock-start oid="ObsH8iJ9jK0kL1mM2nN3oO4" -->
Th. Équivalence des normes en dimension finie::
Soit $E$ un espace vectoriel de dimension finie. Alors toutes les normes sur $E$ sont équivalentes.
<!-- basicblock-end -->

<!-- basicblock-start oid="ObsI9jK0kL1mM2nN3oO4pP5" -->
Def. Suite convergente dans un evn::
Une suite $(u_n)_{n \in \mathbb{N}}$ d'éléments de $E$ converge vers $\ell \in E$ pour la norme $\|\cdot\|$ si :
$$
\|u_n - \ell\| \xrightarrow[n \to +\infty]{} 0
$$
C'est-à-dire : $\forall \epsilon > 0, \; \exists n_0 \in \mathbb{N}, \; \forall n \ge n_0, \; \|u_n - \ell\| \le \epsilon$.
<!-- basicblock-end -->


<!-- basicblock-start oid="ObsJ0kL1mM2nN3oO4pP5qQ6" -->
Th. Convergence coordonnée par coordonnée et dans un espace produit::
- **Dans un ev de dim finie :** Soit $\mathcal{B} = (e_1, \dots, e_p)$ une base de $E$. $u_n = \sum_{i=1}^p u_{n,i} e_i \to \ell = \sum_{i=1}^p \ell_i e_i$ ssi pour tout $i \in [ 1, p ]$, $u_{n,i} \xrightarrow[n \to +\infty]{} \ell_i$.
- **Dans un espace produit :** Soit $E = E_1 \times \dots \times E_p$. Une suite $u_n = (u_{n,1}, \dots, u_{n,p})$ converge vers $\ell = (\ell_1, \dots, \ell_p)$ ssi elle converge composante par composante.
<!-- basicblock-end -->

<!-- basicblock-start oid="ObsK1lL2mM3nN4oO5pP6qQ7" -->
Def. Extractrice, suite extraite et sous-suite::
- **Extractrice :** Application $\varphi : \mathbb{N} \to \mathbb{N}$ strictement croissante.
- **Suite extraite :** Toute suite de la forme $(u_{\varphi(n)})_{n \in \mathbb{N}}$.
- **Propriété :** Si $u_n \to \ell$, alors toute suite extraite converge vers $\ell$.
<!-- basicblock-end -->

<!-- basicblock-start oid="ObsL2mM3nN4oO5pP6qQ7rR8" -->
Def. Valeur d'adhérence (VA) d'une suite::
$a \in E$ est une valeur d'adhérence de la suite $(u_n)_n$ dans $(E, \|\cdot\|)$ si $a$ est la limite d'une suite extraite de $(u_n)_n$.
<!-- basicblock-end -->

<!-- basicblock-start oid="ObsM3nN4oO5pP6qQ7rR8sS9" -->
Th. Caractérisation des valeurs d'adhérence::
$a$ est une valeur d'adhérence de $(u_n)_n$ ssi :
$$
\forall \epsilon > 0, \; \forall n_0 \in \mathbb{N}, \; \exists n \ge n_0, \quad u_n \in B(a, \epsilon)
$$
<!-- basicblock-end -->

---

<!-- basicblock-start oid="ObsN4oO5pP6qQ7rR8sS9tT0" -->
Def. Voisinage d'un point et de $\pm\infty$::
- **Voisinage d'un point $a \in E$ :** Tout ensemble contenant une boule (fermée ou ouverte) de centre $a$ et de rayon $r > 0$.
- **Voisinage de $+\infty$ (resp. $-\infty$) dans $\mathbb{R}$ :** Tout intervalle contenant un ensemble du type $[A, +\infty[$ (resp. $]-\infty, A]$) avec $A \in \mathbb{R}$.
<!-- basicblock-end -->

<!-- basicblock-start oid="ObsO5pP6qQ7rR8sS9tT0uU1" -->
Def. Point adhérent, adhérence, intérieur et frontière d'une partie::
Soit $X \subset E$ une partie d'un evn $(E, \|\cdot\|)$ :
- **Point adhérent :** $a \in E$ est adhérent à $X$ si tout voisinage de $a$ rencontre $X$ ($\forall \epsilon > 0, \; B(a,\epsilon) \cap X \neq \emptyset$).
  - **Adhérence $\overline{X}$ :** Ensemble des points adhérents à $X$ ($X \subset \overline{X}$).
- **Point intérieur :** $b \in E$ est intérieur à $X$ s'il existe un voisinage de $b$ inclus dans $X$ ($\exists \epsilon > 0, \; B(b,\epsilon) \subset X$).
  - **Intérieur $\mathring{X}$ :** Ensemble des points intérieurs à $X$ ($\mathring{X} \subset X$).
- **Frontière :** $\partial X = \overline{X} \setminus \mathring{X}$.
<!-- basicblock-end -->

<!-- basicblock-start oid="ObsP6qQ7rR8sS9tT0uU1vV2" -->
Th. Caractérisation séquentielle des points adhérents::
Soit $a \in E$ et $X \subset E$.
$$
a \in \overline{X} \iff \exists (x_n)_{n \in \mathbb{N}} \in X^{\mathbb{N}}, \quad x_n \xrightarrow[n \to +\infty]{} a
$$
<!-- basicblock-end -->

<!-- basicblock-start oid="ObsQ7rR8sS9tT0uU1vV2wW3" -->
Def. Ensemble dense et caractérisations::
$X \subset E$ est dense dans $E$ si $\overline{X} = E$.
- **Par les voisinages :** $\forall e \in E, \; \forall \epsilon > 0, \quad B(e,\epsilon) \cap X \neq \emptyset$.
- **Séquentiellement :** $\forall e \in E, \; \exists (x_n)_{n \in \mathbb{N}} \in X^{\mathbb{N}}, \quad x_n \xrightarrow[n \to +\infty]{} e$.
<!-- basicblock-end -->

<!-- basicblock-start oid="ObsR8sS9tT0uU1vV2wW3xX4" -->
Def. Ensemble ouvert et ensemble fermé::
Soit $X \subset E$ :
- **Ouvert :** $X$ est ouvert si tout point de $X$ est intérieur à $X$, c'est-à-dire $X = \mathring{X}$.
- **Fermé :** $X$ est fermé si son complémentaire $E \setminus X$ est un ouvert.
<!-- basicblock-end -->

<!-- basicblock-start oid="ObsS9tT0uU1vV2wW3xX4yY5" -->
Th. Caractérisation séquentielle des fermés et sous-espaces de dimension finie::
- **Caractérisation séquentielle :** $X$ est fermé ssi $X = \overline{X}$, c'est-à-dire :
  $$
  \forall (x_n)_{n \in \mathbb{N}} \in X^{\mathbb{N}}, \quad (x_n \xrightarrow[n \to +\infty]{} \ell) \implies \ell \in X
  $$
- **Sous-espace vectoriel :** Tout sous-espace vectoriel de dimension finie d'un evn est un ensemble fermé.
<!-- basicblock-end -->

<!-- basicblock-start oid="ObsT0uU1vV2wW3xX4yY5zZ6" -->
Prop. Propriétés de stabilité des ouverts et des fermés::
- **Ouverts :**
  - Stables par union quelconque d'ouverts.
  - Stables par intersection finie d'ouverts.
- **Fermés :**
  - Stables par intersection quelconque de fermés.
  - Stables par union finie de fermés.
<!-- basicblock-end -->

<!-- basicblock-start oid="ObsU1vV2wW3xX4yY5zZ6aA7" -->
Def. Ouvert relatif, fermé relatif et caractérisation séquentielle::
Soit $Y \subset X \subset E$ :
- **Fermé relatif :** $Y$ est un fermé relatif de $X$ si $Y = F \cap X$ avec $F$ fermé de $E$.
- **Ouvert relatif :** $Y$ est un ouvert relatif de $X$ si $Y = O \cap X$ avec $O$ ouvert de $E$.
- **Caractérisation séquentielle d'un fermé relatif :** $Y$ est fermé relatif dans $X$ ssi :
  $$
  \forall (y_n)_n \in Y^{\mathbb{N}}, \quad (y_n \xrightarrow[n \to +\infty]{} x \text{ avec } x \in X) \implies x \in Y
  $$
<!-- basicblock-end -->

<!-- basicblock-start oid="ObsV2wW3xX4yY5zZ6aA7bB8" -->
Def. Ensemble compact (définition de Bolzano-Weierstrass)::
Une partie $C \subset E$ est compacte si toute suite d'éléments de $C$ possède au moins une valeur d'adhérence dans $C$ (c'est-à-dire contient une sous-suite qui converge dans $C$).
<!-- basicblock-end -->

<!-- basicblock-start oid="ObsW3xX4yY5zZ6aA7bB8cC9" -->
Th. Compacts en dimension finie et stabilité par produit::
- **En dimension finie :** $C \subset E$ est compact $\iff C$ est **fermé et borné**.
- **Produit :** Tout produit fini de compacts est compact.
<!-- basicblock-end -->

<!-- basicblock-start oid="ObsX4yY5zZ6aA7bB8cC9dD0" -->
Th. Théorème de Bolzano-Weierstrass dans un evn::
Soit $E$ un espace vectoriel de dimension finie. Toute suite bornée $(u_n)_{n \in \mathbb{N}}$ de $E$ possède au moins une valeur d'adhérence dans $E$.
<!-- basicblock-end -->

<!-- basicblock-start oid="ObsY5zZ6aA7bB8cC9dD0eE1" -->
Th. Convergence par valeur d'adhérence unique::
- Toute suite d'un compact possédant une unique valeur d'adhérence converge dans ce compact.
- Toute suite bornée en dimension finie possédant une unique valeur d'adhérence converge.
<!-- basicblock-end -->




