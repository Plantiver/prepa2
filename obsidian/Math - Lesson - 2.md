---
deck: math
noteId: 1789748649337
---
<!-- basicblock-start oid="ObsGnsijOQwMH8O3VpbY3g4w" -->
Meth. Savoir si $(f_{i})$ est une base de $E$::
- Calculez le determinant de $(f_{i})$ dans une base connue
- 
<!-- basicblock-end -->


# Exo
$$
\begin{flalign*}
\text{Exo 47}&&&\cr
\text{a) }&P=X^{2}-X&&\cr
\text{b) }&P=X^{2}-Id&&\cr
\text{c) }&P_{1}=X^{3},P_{2}=X^{4}&&\cr
\text{d) }&P_{k}=Id-X^{k},k\in \mathbb{N}^{\star}&&\cr
\text{e) }&P=\prod_{k=1}^{n}(X-\lambda_{k})&&\cr
&\pi (X)=\prod_{\lambda \in \mathrm{Sp}A}(X-\lambda)&&\cr
\end{flalign*}
$$
$$
\begin{flalign*}
\text{Exo 48}&&&\cr
\text{a) }&\text{Alors, }ab^{k}=b^{k}a&&\cr
\implies&aP(b)=a\sum_{k=0}^{\infty}\lambda_{k}b^{k}=P(b)a&&\cr
\text{b) }&\text{Par le a)}&&\cr
\end{flalign*}
$$
Lire preuve du th.49

$$
\begin{flalign*}
\text{Exo 50}&&&\cr
&\exists b\in A,\;ab=ba=1_{A}&&\cr
&\text{Notons: }\varphi_{i}:\begin{cases}
\mathbb{K}[a]\to \mathbb{K}[a] \cr
c \to ac
\end{cases}&&\cr
&\text{Si }c=P(a)\in \mathbb{K}[a]&&\cr
\implies&ac=aP(a)=\varphi_{a}(X)\varphi_{a}(P)=\varphi_{a}(XP)&&\cr
&\varphi_{a}\text{ injective?}&&\cr
&c\in \mathrm{Ker}\varphi \implies ac=0&&\cr
\implies&c=0&&\cr
&\text{Or, on est en dim finis, donc }\varphi\text{ est bbijective}&&\cr
\implies&a^{-1}=\varphi^{-1}(X)&&\cr
\end{flalign*}
$$
Th.51: surligner
$$
\begin{flalign*}
\text{Exo 52}&&&\cr
&\text{Trivialement: }\underline{\text{Inclusion }}&&\cr
&\text{Soit }b=P(a)\in \mathbb{K}[a]&&\cr
&\text{Vu que }\mathrm{dim}A<\infty \implies \pi_{a}\not=0&&\cr
&\text{DE de }P\text{ par }\pi_{a}&&\cr
&\begin{cases}
P = Q\pi_{a}+R \cr
R = \sum_{k=0}^{d-1}\lambda_{k}X^{k}\text{ car deg}(R)<\text{deg}(\pi_{a})=d
\end{cases}&&\cr
\end{flalign*}
$$



$$
\begin{flalign*}
\text{Exo +55}&&&\cr
\text{a) }&u\text{ associé à }\begin{pmatrix}
0 & 0 & 1 \cr
0 & 0 & 0 \cr
0 & 0 & 0
\end{pmatrix}&&\cr
\text{b) }&u^{2}=0\implies \mathrm{Im}u\subset\mathrm{Ker}u\implies\mathrm{dim}\mathrm{Im}u\leq\mathrm{dim}\mathrm{Ker}u&&\cr
&\text{th. du rang: }\mathrm{dim}\mathrm{Ker}u+\mathrm{dim}\mathrm{Im}u=3&&\cr
\implies&\begin{cases}
\mathrm{dim}\mathrm{Ker}u=2 \cr
\mathrm{dim}\mathrm{Im}u=1
\end{cases}&&\cr
\end{flalign*}
$$
$$
\begin{flalign*}
\text{Exo +56}&&&\cr
\text{a) }&\text{Par récurrence}&&\cr
&\text{Trivialement: }\underline{\text{Initialisation, par hypothèse}}&&\cr
&\text{Hérédité, supposons }\mathrm{Ker}u^{k}=\mathrm{Ker}u^{k+1}\text{, montrons que }\mathrm{Ker}u^{k+1}=\mathrm{Ker}u^{k+2}&&\cr
&\text{Trivialement: }\underline{\mathrm{Ker}u^{k+1}\subset\mathrm{Ker}u^{k+2}}&&\cr
&\text{Soit }x \in\mathrm{Ker}u^{k+2}&&\cr
\implies&u^{k+2}(x)=0&&\cr
\implies&u^{k+1}(u(x))=0&&\cr
\implies&u(x)\in\mathrm{Ker}u^{k+1}=\mathrm{Ker}u^{k}&&\cr
\implies&u^{k}(u(x))=0&&\cr
\implies&x \in \mathrm{Ker}u^{k+1}&&\cr
\text{b) }&\dots&&\cr
\end{flalign*}
$$
$$
\begin{flalign*}
\text{Exo 58}&&&\cr
\text{a) }&\begin{pmatrix}
0,1 \cr
0,0
\end{pmatrix},\begin{pmatrix}
1  & -1 \cr
1 & -1
\end{pmatrix}&&\cr
\text{b) }&&&\cr
&\text{(i) }\pi=X^{p}&&\cr
&\text{(ii) Si }\forall x \in u^{p-1}(x)=0&&\cr
\implies&u^{p-1}=0\implies \pi\text{ n'est pas minimal}\;\boxed{\text{Absurde !}}&&\cr
&\text{(iii) }\text{Soit }(\lambda_{i})\in \mathbb{K},\;\sum_{k=0}^{n}\lambda_{k}u^{k}(x)=0&&\cr
\underset{u^{p-1}}{\implies}&\lambda_{0}u^{p-1}(x)=0\implies\lambda_{0}=0&&\cr
&\text{De même, }\forall k ,\;\lambda_{k}=0&&\cr
\implies&\text{Conclusion: }F\text{ a }p\text{ elt dans }E\text{ de }\mathrm{dim}E=n\text{, par le cours, }p\leq n&&\cr
\text{c) }&\text{Si }\begin{cases}
A^{p-1}\not=0 \cr
A^{p}=0
\end{cases}\implies \exists X\in \mathbb{K}^{n},\;A^{p-1}X=0&&\cr
\text{d) }&\text{Par l'absurde}&&\cr
&\exists M\in \mathcal{M}_{2}(\mathbb{K})&&\cr
\end{flalign*}
$$












