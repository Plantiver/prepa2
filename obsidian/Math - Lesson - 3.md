---
deck: math
noteId: 1789748649354
---
<!-- basicblock-start oid="ObsGArlYmVsq3I18xegMnIWw" -->
Def. Prod de $A\in \mathcal{M}_{n,p}(\mathbb{K}), B\in \mathcal{M}_{p,q}(\mathbb{K})$::
$$
[A\times B]_{i,j}=\sum_{k=1}[A]_{i,k}\times[B]_{k,j}.
$$
<!-- basicblock-end -->
<!-- basicblock-start oid="Obs4i3d0Rokf2MtXqzN4Fqz1" -->
Def. D est une matrice à diagonale stricte ssi::
$$
D=\mathrm{Diag}((\lambda_{i}))\text{, où les }(\lambda_{i})\text{ sont distincts.}
$$
<!-- basicblock-end -->
<!-- basicblock-start oid="Obs4rX2AAVvTfGqUBSo1MKa2" -->
Def. Les matrices scalaires sont les matrices de la forme::
$M=\lambda I_{n}$.
<!-- basicblock-end -->
<!-- basicblock-start oid="ObsWwllYu6LzkxxanuTYARdW" -->
Prop. Le centre de l'anneau des matrices carrées est::
$$
\mathrm{C}(\mathcal{M}_{n}(\mathbb{K}))=\mathrm{Vect}(I_{n}).
$$
<!-- basicblock-end -->

<!-- basicblock-start oid="ObsuYORb32QtAIMKWN8KhvQN" -->
Meth. Trouver l'inverse d'une matrice::
- de tête
- résoudre $AX=Y$
- $A^{-1}=\frac{1}{\det A}\cdot (com(A))^{T}$.
<!-- basicblock-end -->
<!-- basicblock-start oid="ObsZa1q8HSWaaok3XlG6ZXWg" -->
Def. Matrices triangulaires supérieurs::
$$
T^{+}_{n}(\mathbb{K})=\mathrm{Vect}((E_{i,j})_{i\leq j})
$$
<!-- basicblock-end -->
<!-- basicblock-start oid="Obs6h8qcTxY0pSYaH1Q17QJ1" -->
Def. Matrices symétriques et antisymétrique::
$$
\begin{cases}
S_{n}(\mathbb{K})=\mathrm{Set}( M\in \mathcal{M}_{n}(\mathbb{K}),\;M^{T}=M )\cr
A_{n}(\mathbb{K})=\mathrm{Set}( M\in \mathcal{M}_{n}(\mathbb{K}),\;M^{T}=-M )
\end{cases}
$$
<!-- basicblock-end -->
<!-- basicblock-start oid="ObsX8GgLlbjKI3gFLOWcnJxo" -->
Prop. Produit de matrice élémentaire::
$$
E_{i,j}\times E_{k,l}=\delta_{j}^{k}\cdot E_{i,l}
$$
<!-- basicblock-end -->
<!-- basicblock-start oid="Obs9PPbrpuXD1NAnB9lhvU0k" -->
Prop. Dimension des espaces de matrices usuels::
- $\mathrm{dim}\mathcal{M}_{n}(\mathbb{K})=n^{2}$
- $\mathrm{dim}T^{+}_{n}(\mathbb{K})=\frac{n(n+1)}{2}$
- $\mathrm{dim}S_{n}(\mathbb{K})=\frac{n(n+1)}{2}$
- $\mathrm{dim}A_{n}(\mathbb{K})=\frac{n(n-1)}{2}$
<!-- basicblock-end -->
<!-- basicblock-start oid="Obsm8fXt4H6JZmHVyurQw5uw" -->
Def. La Trace d'une matrice::
$$
\mathrm{Tr}(A)=\sum_{i=1}^{n}a_{i,i}
$$
<!-- basicblock-end -->
<!-- basicblock-start oid="ObsQ6phjvG8MOJCO5bM8ysNV" -->
Prop. Trace d'un produit::
$$
\mathrm{Tr}(AB)=\mathrm{Tr}(BA)
$$
<!-- basicblock-end -->
<!-- basicblock-start oid="ObsF4pHkra4HcFGlTGa2wIox" -->
Prop. Trace d'un projecteur::
$$
\mathrm{Tr}(p)=\mathrm{rg}p
$$
<!-- basicblock-end -->
<!-- basicblock-start oid="ObsQxGglpkXGsrUWUDdeyDbX" -->
Def. Determinant d'une matrice::
$$
\det M=\sum_{\sigma \in S_{n}}\varepsilon (\sigma)\prod_{i=1}^{n}a_{i,\sigma (i)}
$$
<!-- basicblock-end -->
<!-- basicblock-start oid="Obs7YXcWFpcnNQ3NyH70Qj4i" -->
Prop. Propriété du determinant::
- $\det\lambda A=\lambda^{2}\det A$
- $\det AB=\det A\det B=\det BA$
- $\det A\not=0\implies \implies^{-1}A\text{est inversible}$
- $\text{Si }A\in T_{n}^{+}(\mathbb{K}),\;\det A=\prod_{i=1}^{n}a_{i,i}$
<!-- basicblock-end -->


---


<!-- basicblock-start oid="ObsA1aB2cC3dD4eE5fF6gG7" -->
Méthodes. Trois options pour inverser une matrice carrée $A \in \mathcal{M}_n(K)$::
- Option 1 : Trouver l'inverse « de tête »
- Option 2 : Résoudre le système linéaire $AX = Y$
- Option 3 : Utiliser la formule de la comatrice $A^{-1} = \frac{1}{\det(A)} \, {}^t\mathrm{com}(A)$
<!-- basicblock-end -->

<!-- basicblock-start oid="ObsB2bC3dD4eE5fF6gG7hH8" -->
Méthodes. Calcul d'un déterminant::
- **Outils :** Opérations élémentaires sur les lignes/colonnes et développement suivant une ligne ou une colonne
- **Buts :** Se ramener à une matrice triangulaire (éventuellement par blocs) ou obtenir une relation de récurrence
<!-- basicblock-end -->

<!-- basicblock-start oid="ObsC3cD4dE5eF6fG7gH8hI9" -->
Def. Formule des coefficients du produit matriciel $A \times B$ ($A \in \mathcal{M}_{n,p}(K)$ et $B \in \mathcal{M}_{p,q}(K)$)::
$$
(A \times B)_{i,j} = \sum_{k=1}^p [A]_{i,k} [B]_{k,j}
$$
<!-- basicblock-end -->

<!-- basicblock-start oid="ObsD4dE5eF6fG7gH8hI9iJ0" -->
Prop. Propriétés algébriques de la transposition::
- Linéarité : ${}^t(\lambda A + \mu B) = \lambda {}^t A + \mu {}^t B$
- Produit : ${}^t(A \times B) = {}^t B \times {}^t A$
- Inversion : ${}^t(A^{-1}) = ({}^t A)^{-1}$ pour $A \in \mathrm{GL}_n(K)$
<!-- basicblock-end -->

<!-- basicblock-start oid="ObsE5eF6fG7gH8hI9iJ0jK1" -->
Prop. Dimensions des sous-espaces $S_n(K)$ et $A_n(K)$::
- $\dim(S_n(K)) = \frac{n(n+1)}{2}$ (matrices symétriques : ${}^t A = A$)
- $\dim(A_n(K)) = \frac{n(n-1)}{2}$ (matrices antisymétriques : ${}^t A = -A$)
<!-- basicblock-end -->

<!-- basicblock-start oid="ObsF6fG7gH8hI9iJ0jK1kL2" -->
Prop. Invariants par transposition::
- Le déterminant, la trace, le rang et le polynôme caractéristique sont invariants par transposition.
<!-- basicblock-end -->

<!-- basicblock-start oid="ObsG7gH8hI9iJ0jK1kL2lL3" -->
Th. Trace d'un projecteur $p \in \mathcal{L}(E)$::
$$
\mathrm{tr}(p) = \mathrm{rg}(p)
$$
<!-- basicblock-end -->

<!-- basicblock-start oid="ObsH8hI9iJ0jK1kL2lL3mM4" -->
Prop. Formule de Leibniz et dilatation pour le déterminant::
- $\det(A) = \sum_{\sigma \in S_n} \varepsilon(\sigma) \prod_{i=1}^n a_{i,\sigma(i)}$
- $\det(\lambda A) = \lambda^n \det(A)$ pour $A \in \mathcal{M}_n(K)$
<!-- basicblock-end -->

<!-- basicblock-start oid="ObsI9iJ0jK1kL2lL3mM4nN5" -->
Prop. Déterminant d'un produit et multiplicativité::
$$
\det(A \times B) = \det(A) \times \det(B) = \det(B \times A)
$$
<!-- basicblock-end -->

<!-- basicblock-start oid="ObsJ0jK1kL2lL3mM4nN5oO6" -->
Prop. Effet des opérations élémentaires sur le déterminant::
- Échange de deux lignes/colonnes : le déterminant est changé en son opposé
- Ajout d'une combinaison linéaire d'autres colonnes/lignes ($C_j \leftarrow C_j + \sum_{i \neq j} \lambda_i C_i$) : le déterminant reste invariant
<!-- basicblock-end -->

<!-- basicblock-start oid="ObsK1kL2lL3mM4nN5oO6pP7" -->
Th. Déterminant d'une matrice triangulaire supérieure par blocs::
$$
\det \begin{pmatrix} A_1 & * & \cdots & * \\ 0 & A_2 & \cdots & \vdots \\ \vdots & \vdots & \ddots & \vdots \\ 0 & \cdots & 0 & A_p \end{pmatrix} = \prod_{i=1}^p \det(A_i)
$$
<!-- basicblock-end -->

<!-- basicblock-start oid="ObsL2lL3mM4nN5oO6pP7qQ8" -->
Def. Mineur, cofacteur et comatrice::
- Mineur $D_{i,j}$ : déterminant de la matrice d'ordre $n-1$ obtenue en supprimant la ligne $i$ et la colonne $j$ de $A$
- Cofacteur $A_{i,j}$ : $A_{i,j} = (-1)^{i+j} D_{i,j}$
- Comatrice $\mathrm{com}(A)$ : $\mathrm{com}(A) = (A_{i,j})_{1 \le i,j \le n}$
<!-- basicblock-end -->

<!-- basicblock-start oid="ObsM3mM4nN5oO6pP7qQ8rR9" -->
Th. Formules de développement du déterminant par rapport à une ligne ou colonne::
- Colonne $j$ : $\det(A) = \sum_{i=1}^n a_{i,j} A_{i,j} = \sum_{i=1}^n (-1)^{i+j} a_{i,j} D_{i,j}$
- Ligne $i$ : $\det(A) = \sum_{j=1}^n a_{i,j} A_{i,j} = \sum_{j=1}^n (-1)^{i+j} a_{i,j} D_{i,j}$
<!-- basicblock-end -->

<!-- basicblock-start oid="ObsN4nN5oO6pP7qQ8rR9sS0" -->
Th. Relation fondamentale de la comatrice et calcul de l'inverse::
$$
A \times {}^t\mathrm{com}(A) = {}^t\mathrm{com}(A) \times A = \det(A) I_n
$$
Si $\det(A) \neq 0$, alors $A^{-1} = \frac{1}{\det(A)} \, {}^t\mathrm{com}(A)$
<!-- basicblock-end -->

<!-- basicblock-start oid="ObsO5oO6pP7qQ8rR9sS0tT1" -->
Prop. Inverse d'une matrice $2 \times 2$::
$$
\begin{pmatrix} a & b \\ c & d \end{pmatrix}^{-1} = \frac{1}{ad - bc} \begin{pmatrix} d & -b \\ -c & a \end{pmatrix}
$$
<!-- basicblock-end -->


---
<!-- basicblock-start oid="ObsP2qR3sT4uV5wX6yZ7aB8" -->
Th. Déterminant de Vandermonde d'ordre $n$::
$$
V_n(x_1,\dots,x_n) = \det \begin{pmatrix} 1 & x_1 & x_1^2 & \dots & x_1^{n-1} \\ 1 & x_2 & x_2^2 & \dots & x_2^{n-1} \\ \vdots & \vdots & \vdots & & \vdots \\ 1 & x_n & x_n^2 & \dots & x_n^{n-1} \end{pmatrix} = \prod_{1 \le i < j \le n} (x_j - x_i)
$$
<!-- basicblock-end -->

<!-- basicblock-start oid="ObsQ3rS4tU5vW6xY7zA8bC9" -->
Th. Caractérisation du rang par les déterminants extraits (mineurs)::
- $\mathrm{rg}(A) \ge k \iff$ il existe au moins un déterminant extrait d'ordre $k$ non nul de $A$.
- Le rang de $A$ est l'ordre maximal d'un sous-déterminant non nul extrait de $A$.
<!-- basicblock-end -->

<!-- basicblock-start oid="ObsR4sT5uV6wX7yZ8aB9cD0" -->
Def. Matrice d'une application linéaire $u \in \mathcal{L}(E,F)$ dans des bases $\mathcal{E}$ et $\mathcal{F}$::
$$
M_{\mathcal{E},\mathcal{F}}(u) = \begin{pmatrix} | & & | \\ [u(e_1)]_{\mathcal{F}} & \dots & [u(e_n)]_{\mathcal{F}} \\ | & & | \end{pmatrix}
$$
<!-- basicblock-end -->

<!-- basicblock-start oid="ObsS5tU6vW7xY8zA9bC0dE1" -->
Prop. Interprétation matricielle du calcul d'image $u(x) = y$::
$$
u(x) = y \iff M_{\mathcal{E},\mathcal{F}}(u) \times M_{\mathcal{E}}(x) = M_{\mathcal{F}}(y) \quad (\text{soit } U X = Y)
$$
<!-- basicblock-end -->

<!-- basicblock-start oid="ObsT6uV7wX8yZ9aB0cC1dE2" -->
Prop. Matrice de la composée et de l'application réciproque::
- $M_{\mathcal{E},\mathcal{G}}(v \circ u) = M_{\mathcal{F},\mathcal{G}}(v) \times M_{\mathcal{E},\mathcal{F}}(u)$
- $M_{\mathcal{F},\mathcal{E}}(u^{-1}) = \left( M_{\mathcal{E},\mathcal{F}}(u) \right)^{-1}$ pour un isomorphisme $u$
<!-- basicblock-end -->

<!-- basicblock-start oid="ObsU7vW8xY9zA0bC1dE2fF3" -->
Def. Matrice de passage de la base $\mathcal{B}$ à la base $\mathcal{B}'$::
$$
P_{\mathcal{B},\mathcal{B}'} = M_{\mathcal{B},\mathcal{B}'}(\mathrm{Id}_E) = M_{\mathcal{B}}(\mathcal{B}')
$$
(Colonnes constituées des coordonnées des vecteurs de $\mathcal{B}'$ exprimés dans la base $\mathcal{B}$).
<!-- basicblock-end -->

<!-- basicblock-start oid="ObsV8wX9yZ0aB1cC2dE3fF4" -->
Prop. Inversibilité de la matrice de passage::
- Toute matrice de passage $P_{\mathcal{B},\mathcal{B}'}$ est inversible.
- $(P_{\mathcal{B},\mathcal{B}'})^{-1} = P_{\mathcal{B}',\mathcal{B}}$
<!-- basicblock-end -->

<!-- basicblock-start oid="ObsW9xY0zA1bC2dE3fF4gG5" -->
Th. Formule de changement de base pour un vecteur $x \in E$::
$$
M_{\mathcal{B}}(x) = P_{\mathcal{B},\mathcal{B}'} \times M_{\mathcal{B}'}(x) \quad \text{soit} \quad M_{\mathcal{B}'}(x) = P_{\mathcal{B}',\mathcal{B}} \times M_{\mathcal{B}}(x)
$$
<!-- basicblock-end -->

<!-- basicblock-start oid="ObsX0zA1bC2dE3fF4gG5hH6" -->
Th. Formule de changement de base pour une application linéaire $u \in \mathcal{L}(E,F)$::
$$
M_{\mathcal{E}',\mathcal{F}'}(u) = P_{\mathcal{F}',\mathcal{F}} \times M_{\mathcal{E},\mathcal{F}}(u) \times P_{\mathcal{E},\mathcal{E}'} \quad \text{avec } P_{\mathcal{F}',\mathcal{F}} = (P_{\mathcal{F},\mathcal{F}'})^{-1}
$$
<!-- basicblock-end -->

<!-- basicblock-start oid="ObsY1aB2cC3dE4fF5gG6hI7" -->
Th. Formule de changement de base pour un endomorphisme $u \in \mathcal{L}(E)$::
En notant $M = M_{\mathcal{B}}(u)$, $M' = M_{\mathcal{B}'}(u)$ et $P = P_{\mathcal{B},\mathcal{B}'}$ :
$$
M' = P^{-1} M P \quad \iff \quad M = P M' P^{-1}
$$
<!-- basicblock-end -->

<!-- basicblock-start oid="ObsZ2bC3dE4fF5gG6hI7jJ8" -->
Def. Matrices semblables dans $\mathcal{M}_n(K)$::
- $A, B \in \mathcal{M}_n(K)$ sont semblables s'il existe $P \in \mathrm{GL}_n(K)$ telle que $B = P^{-1} A P$.
<!-- basicblock-end -->

<!-- basicblock-start oid="ObsA3cD4dE5fF6gG7hI8jJ9" -->
Th. Invariants de similitude::
Deux matrices semblables $A$ et $B$ ont en commun :
- Leur trace : $\mathrm{tr}(A) = \mathrm{tr}(B)$
- Leur déterminant : $\det(A) = \det(B)$
- Leur polynôme caractéristique : $\chi_A(X) = \det(X I_n - A)$ (donc mêmes valeurs propres)
- Leur rang : $\mathrm{rg}(A) = \mathrm{rg}(B)$
<!-- basicblock-end -->

<!-- basicblock-start oid="ObsB4dE5fF6gG7hI8jJ9kK0" -->
Th. Interprétation géométrique de la similitude::
- Deux matrices $M$ et $M'$ sont semblables si et seulement si elles représentent un même endomorphisme dans deux bases différentes.
<!-- basicblock-end -->

<!-- basicblock-start oid="ObsC5eF6gG7hI8jJ9kK0lL1" -->
Th. Caractérisation du rang par l'équivalence de matrices::
- $A, B \in \mathcal{M}_{n,p}(K)$ sont équivalentes ssi $\exists P \in \mathrm{GL}_n(K), Q \in \mathrm{GL}_p(K)$ telles que $A = P B Q$.
- $\mathrm{rg}(A) = r \iff A$ est équivalente à $J_r = \begin{pmatrix} I_r & 0 \\ 0 & 0 \end{pmatrix}$.
<!-- basicblock-end -->

<!-- basicblock-start oid="ObsD6fF7gG8hI9jJ0kK1lL2" -->
Def. Sous-espace stable et endomorphisme induit::
- $F \subset E$ est stable par $u \in \mathcal{L}(E)$ si $u(F) \subset F$.
- L'endomorphisme induit $u_F \in \mathcal{L}(F)$ est la restriction $u_F : F \to F, f \mapsto u(f)$.
<!-- basicblock-end -->

---

<!-- basicblock-start oid="ObsE7gH8hI9jJ0kK1lL2mM3" -->
Th. Stabilité des noyaux et images par commutation::
Si deux endomorphismes $u$ et $v$ commutent ($u \circ v = v \circ u$), alors :
- $\mathrm{Ker}(u)$ et $\mathrm{Im}(u)$ sont stables par $v$.
- $\mathrm{Ker}(v)$ et $\mathrm{Im}(v)$ sont stables par $u$.
<!-- basicblock-end -->

<!-- basicblock-start oid="ObsF8hI9jJ0kK1lL2mM3nN4" -->
Th. Traduction matricielle de la stabilité d'un sous-espace $E_1$ ($E = E_1 \oplus E_2$)::
- $E_1$ est stable par $u \iff M_{\mathcal{B}}(u) = \begin{pmatrix} A_1 & B \\ 0 & A_2 \end{pmatrix}$ dans une base adaptée à la somme directe.
- $A_1 \in \mathcal{M}_p(K)$ ($p = \dim E_1$) est la matrice de l'endomorphisme induit $u_{E_1}$ dans la base de $E_1$.
<!-- basicblock-end -->

<!-- basicblock-start oid="ObsG9iJ0kK1lL2mM3nN4oO5" -->
Th. Traduction matricielle d'une décomposition en sous-espaces stables ($E = \bigoplus_{i=1}^p E_i$)::
- Tous les $E_i$ sont stables par $u \iff$ la matrice de $u$ dans une base adaptée à la décomposition est **diagonale par blocs** : $\mathrm{diag}(A_1, \dots, A_p)$.
<!-- basicblock-end -->

<!-- basicblock-start oid="ObsH0jK1kL2lL3mM4nN5oO6" -->
Th. Construction d'une application linéaire par ses restrictions ($E = \bigoplus_{i=1}^p E_i$)::
- Pour toute famille d'applications linéaires $(u_i \in \mathcal{L}(E_i, F))_{1 \le i \le p}$, il existe une **unique** application linéaire $u \in \mathcal{L}(E,F)$ telle que $\forall i \in [ 1, p ], \; u_{|E_i} = u_i$.
<!-- basicblock-end -->

<!-- basicblock-start oid="ObsI1kL2lL3mM4nN5oO6pP7" -->
Prop. Produit des matrices élémentaires::
$$
E_{i,j} \times E_{k,l} = \delta_{j}^k E_{i,l} \quad \text{où } \delta_j^k = \begin{cases} 1 & \text{si } j = k \\ 0 & \text{sinon} \end{cases}
$$
<!-- basicblock-end -->

<!-- basicblock-start oid="ObsJ2lL3mM4nN5oO6pP7qQ8" -->
Prop. Propriétés des matrices de transvection $T_{i,j}(\lambda) = I_n + \lambda E_{i,j}$ ($i \neq j$)::
- Simulent les opérations élémentaires $L_i \leftarrow L_i + \lambda L_j$ ou $C_j \leftarrow C_j + \lambda C_i$.
- Laisse le déterminant invariant : $\det(T_{i,j}(\lambda)) = 1$.
- Inversible : $(T_{i,j}(\lambda))^{-1} = T_{i,j}(-\lambda)$.
<!-- basicblock-end -->
