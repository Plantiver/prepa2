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







