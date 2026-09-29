---
deck: math
---



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

<!-- basicblock-start oid="ObsK8jM9xP2L4qR7sT0uV1w" -->
Meth. Montrer qu'une famille est une base de $E$::
- Option 1 (Matriciel) : calculer le déterminant de la famille dans une base répertoriée
- Option 2 (Dimensionnel) : si $p = \dim(E)$, montrer qu'elle est libre ou génératrice
- Option 3 (Définition) : montrer qu'elle est à la fois libre et génératrice
<!-- basicblock-end -->

<!-- basicblock-start oid="ObsA3bN7cQ9rT1uV2wX5yZ8" -->
Meth. Montrer que $F \subset E$ est un sous-espace vectoriel de $E$::
- Option 1 : l'écrire sous la forme $F = \mathrm{Vect}(\mathcal{F})$
- Option 2 : vérifier $0_E \in F$ et la stabilité par combinaisons linéaires
- Option 3 : l'écrire comme noyau ou image d'une application linéaire
<!-- basicblock-end -->

<!-- basicblock-start oid="ObsP5qR8sT2uV4wX6yZ0aB2" -->
Meth. Montrer que $u \in \mathcal{L}(E,F)$ est un isomorphe::
- Option 1 (Matriciel) : vérifier qu'une matrice représentant $u$ est inversible
- Option 2 (Dimensionnel) : si $\dim(E)=\dim(F)$, prouver l'injectivité ou la surjectivité
- Option 3 (Définition) : prouver la bijectivité (injectivité et surjectivité)
- Option 4 (Base) : prouver que $u$ transforme une base de $E$ en une base de $F$
<!-- basicblock-end -->

<!-- basicblock-start oid="ObsC7dE9fG1hI3jK5lM7nO9" -->
Def. Structure de $K$-espace vectoriel $(E, +, \cdot)$::
- $(E,+)$ est un groupe abélien
- Distributivité à gauche : $\forall \lambda \in K,\; \forall (e,f) \in E^2,\; \lambda \cdot (e+f) = \lambda \cdot e + \lambda \cdot f$
- Distributivité à droite : $\forall (\lambda,\mu) \in K^2,\; \forall e \in E,\; (\lambda+\mu) \cdot e = \lambda \cdot e + \mu \cdot e$
- Compatibilité externe : $\forall (\lambda,\mu) \in K^2,\; \forall e \in E,\; \lambda \cdot (\mu \cdot e) = (\lambda \times \mu) \cdot e$
- Invariance par le neutre : $\forall e \in E,\; 1_K \cdot e = e$
<!-- basicblock-end -->

<!-- basicblock-start oid="ObsP1qW3eR5tY7uI9oO1pA3" -->
Prop. Intégrité de la multiplication externe ($\lambda \in K, x \in E$)::
$$
\lambda \cdot x = 0_E \iff (\lambda = 0_K \quad \text{ou} \quad x = 0_E)
$$
<!-- basicblock-end -->

<!-- basicblock-start oid="ObsS2dF4gH6jJ8kL0mN2pR4" -->
Def. Famille libre $(f_1, \dots, f_p)$ dans $E$::
$$
\forall (\lambda_1, \dots, \lambda_p) \in K^p, \; \left( \sum_{i=1}^p \lambda_i f_i = 0_E \implies \lambda_1 = \dots = \lambda_p = 0 \right)
$$
<!-- basicblock-end -->

<!-- basicblock-start oid="ObsT3fG5hJ7kL9mN1pR3sT5" -->
Def. Famille liée $(f_1, \dots, f_p)$ dans $E$::
$$
\exists (\lambda_1, \dots, \lambda_p) \in K^p \setminus \{(0,\dots,0)\}, \; \sum_{i=1}^p \lambda_i f_i = 0_E
$$
<!-- basicblock-end -->

<!-- basicblock-start oid="ObsU4gH6jK8lL0mN2pR4sT6" -->
Def. Famille génératrice $(f_1, \dots, f_p)$ de $E$::
$$
\forall e \in E, \; \exists (\lambda_1, \dots, \lambda_p) \in K^p, \; e = \sum_{i=1}^p \lambda_i f_i
$$
<!-- basicblock-end -->

<!-- basicblock-start oid="ObsV5hJ7kL9mN1pR3sT5uV7" -->
Def. Espace vectoriel de dimension finie::
- $E$ est de dimension finie s'il possède une famille génératrice finie.
<!-- basicblock-end -->

<!-- basicblock-start oid="ObsW6jK8mL0nP2qR4sT6uV8" -->
Def. Base d'un espace vectoriel $E$::
- Une famille est une base de $E$ si et seulement si elle est à la fois libre et génératrice de $E$.
<!-- basicblock-end -->

<!-- basicblock-start oid="ObsX7kL9mN1pO3qR5sT7uV9" -->
Th. Unicité de la décomposition dans une base $(f_1, \dots, f_p)$ de $E$::
$$
\forall e \in E, \; \exists! (\lambda_1, \dots, \lambda_p) \in K^p, \; e = \sum_{i=1}^p \lambda_i f_i
$$
<!-- basicblock-end -->

<!-- basicblock-start oid="ObsY8mL0nP2qR4sT6uV8wX0" -->
Def. Dimension d'un espace vectoriel $\dim(E)$::
$$
\dim(E) = \mathrm{card}(\mathcal{B}) \quad \text{où } \mathcal{B} \text{ est une base quelconque de } E.
$$
<!-- basicblock-end -->

<!-- basicblock-start oid="ObsZ9nM1pO3qR5sT7uV9wX1" -->
Th. Majorant du cardinal $p$ d'une famille libre dans $E$ de dimension finie::
$$
p \le \dim(E)
$$
<!-- basicblock-end -->

<!-- basicblock-start oid="ObsA0oP2qR4sT6uV8wX0yZ2" -->
Th. Famille libre de cardinal $p = \dim(E)$::
$$
(p = \dim(E) \text{ et } \mathcal{F} \text{ libre}) \iff \mathcal{F} \text{ est une base de } E
$$
<!-- basicblock-end -->

<!-- basicblock-start oid="ObsB1pQ3rS5tU7vW9xY1zA3" -->
Th. Minorant du cardinal $p$ d'une famille génératrice de $E$ de dimension finie::
$$
p \ge \dim(E)
$$
<!-- basicblock-end -->

<!-- basicblock-start oid="ObsC2qR4sT6uV8wX0yZ2aB4" -->
Th. Famille génératrice de cardinal $p = \dim(E)$::
$$
(p = \dim(E) \text{ et } \mathcal{F} \text{ génératrice}) \iff \mathcal{F} \text{ est une base de } E
$$
<!-- basicblock-end -->

<!-- basicblock-start oid="ObsD3rS5tU7vW9xY1zA3bC5" -->
Prop. Familles étagées en degré de polynômes non nuls dans $K[X]$::
- Toute famille de polynômes non nuls de degrés deux à deux distincts est libre.
<!-- basicblock-end -->

<!-- basicblock-start oid="ObsE4sT6uV8wX0yZ2aB4cD6" -->
Def. Sous-espace vectoriel engendré $\mathrm{Vect}(f_1, \dots, f_p)$::
$$
\mathrm{Vect}(f_1, \dots, f_p) = \left\{ \sum_{i=1}^p \lambda_i f_i \; \middle| \; (\lambda_1, \dots, \lambda_p) \in K^p \right\}
$$
<!-- basicblock-end -->

<!-- basicblock-start oid="ObsF5tU7vW9xY1zA3bC5dE7" -->
Def. Rang d'une famille de vecteurs $(f_1, \dots, f_p)$::
$$
\mathrm{rg}(f_1, \dots, f_p) = \dim\left(\mathrm{Vect}(f_1, \dots, f_p)\right)
$$
<!-- basicblock-end -->

<!-- basicblock-start oid="ObsG6uV8wX0yZ2aB4cD6eF8" -->
Th. Majorations élémentaires du rang d'une famille $\mathcal{F}=(f_1,\dots,f_p)$ dans $E$ de dim finie::
- $\mathrm{rg}(\mathcal{F}) \le \dim(E)$, avec égalité si et seulement si $\mathcal{F}$ est génératrice de $E$
- $\mathrm{rg}(\mathcal{F}) \le p$, avec égalité si et seulement si $\mathcal{F}$ est libre
<!-- basicblock-end -->

---
<!-- basicblock-start oid="ObsH7vW9xY1zA3bC5dE7fG9" -->
Th. Théorème de la base incomplète ($E$ de dim finie $n$)::
$$
\mathcal{F}=(f_1,\dots,f_p) \text{ libre } \implies \exists (f_{p+1},\dots,f_n) \in E^{n-p}, \; (f_1,\dots,f_p,f_{p+1},\dots,f_n) \text{ est une base de } E
$$
<!-- basicblock-end -->

<!-- basicblock-start oid="ObsI8wX0yZ2aB4cD6eF8gH0" -->
Th. Extraction d'une base ($E$ de dim finie)::
- De toute famille génératrice $(g_1,\dots,g_p)$ de $E$, on peut extraire une base de $E$.
<!-- basicblock-end -->

<!-- basicblock-start oid="ObsJ9xY1zA3bC5dE7fG9hI1" -->
Prop. Dimension du produit cartésien $E \times F$ (dim finies)::
$$
\dim(E \times F) = \dim(E) + \dim(F)
$$
<!-- basicblock-end -->

<!-- basicblock-start oid="ObsK0yZ2aB4cD6eF8gH0iJ2" -->
Prop. Dimensions des espaces de référence ($K^n$, $K_n[X]$, $\mathcal{M}_{n,p}(K)$)::
- $\dim(K^n) = n$
- $\dim(K_n[X]) = n+1$
- $\dim(\mathcal{M}_{n,p}(K)) = n \times p$
<!-- basicblock-end -->

<!-- basicblock-start oid="ObsL1zA3bC5dE7fG9hI1jK3" -->
Prop. Dimension de l'espace des applications linéaires $\mathcal{L}(E,F)$::
$$
\dim(\mathcal{L}(E,F)) = \dim(E) \times \dim(F)
$$
<!-- basicblock-end -->

<!-- basicblock-start oid="ObsM2aB4cD6eF8gH0iJ2kL4" -->
Def. Sous-espace vectoriel $F \subset E$::
- $0_E \in F$
- $\forall (\lambda_1, \lambda_2) \in K^2, \; \forall (f_1, f_2) \in F^2, \; \lambda_1 f_1 + \lambda_2 f_2 \in F$
<!-- basicblock-end -->

<!-- basicblock-start oid="ObsN3bC5dE7fG9hI1jK3mL5" -->
Th. Base adaptée à une somme directe $E = F \oplus G$::
$$
E = F \oplus G \iff \mathcal{B} = (\mathcal{B}_F, \mathcal{B}_G) \text{ est une base de } E
$$
<!-- basicblock-end -->

<!-- basicblock-start oid="ObsO4cD6eF8gH0iJ2kL4nM6" -->
Prop. Existence de supplémentaire en dimension finie::
- Tout sous-espace vectoriel $F$ d'un espace vectoriel $E$ de dimension finie possède au moins un supplémentaire dans $E$.
<!-- basicblock-end -->

<!-- basicblock-start oid="ObsP5dE7fG9hI1jK3mL5oN7" -->
Def. Somme de sous-espaces vectoriels $E_1 + \dots + E_p$::
$$
e \in E_1 + \dots + E_p \iff \exists (e_1,\dots,e_p) \in E_1 \times \dots \times E_p, \; e = \sum_{i=1}^p e_i
$$
<!-- basicblock-end -->

<!-- basicblock-start oid="ObsQ6eF8gH0iJ2kL4nM6pO8" -->
Th. Caractérisation générale d'une somme directe $E_1 + \dots + E_p$::
$$
\forall (e_1,\dots,e_p) \in E_1 \times \dots \times E_p, \; \left( \sum_{i=1}^p e_i = 0_E \implies e_1 = \dots = e_p = 0_E \right)
$$
<!-- basicblock-end -->

<!-- basicblock-start oid="ObsR7fG9hI1jK3mL5oN7qP9" -->
Th. Caractérisation d'une somme directe par la dimension::
$$
\sum_{i=1}^p E_i \text{ est directe } \iff \dim\left(\sum_{i=1}^p E_i\right) = \sum_{i=1}^p \dim(E_i)
$$
<!-- basicblock-end -->

<!-- basicblock-start oid="ObsS8gH0iJ2kL4nM6pO8qR0" -->
Th. Caractérisation d'une somme directe de deux sous-espaces vectoriels ($p=2$)::
$$
E_1 + E_2 \text{ est directe } \iff E_1 \cap E_2 = \{0_E\}
$$
<!-- basicblock-end -->

<!-- basicblock-start oid="ObsT9hI1jK3mL5oN7qP9rS1" -->
Form. Formule de Grassmann::
$$
\dim(E_1 + E_2) = \dim(E_1) + \dim(E_2) - \dim(E_1 \cap E_2)
$$
<!-- basicblock-end -->

<!-- basicblock-start oid="ObsU0iJ2kL4nM6pO8qR0sT2" -->
Def. Sous-espaces vectoriels supplémentaires $E = E_1 \oplus \dots \oplus E_p$::
- La somme $E_1 + \dots + E_p$ est directe
- La somme décrit l'espace : $E = E_1 + \dots + E_p$
<!-- basicblock-end -->

<!-- basicblock-start oid="ObsV1jK3mL5oN7qP9rS1tU3" -->
Th. Règle « 2 parmi 3 » pour la somme directe de $p$ sous-espaces vectoriels ($E$ de dim finie)::
- La somme $E_1 + \dots + E_p$ est directe
- $E = E_1 + \dots + E_p$
- $\dim(E) = \sum_{i=1}^p \dim(E_i)$
<!-- basicblock-end -->

<!-- basicblock-start oid="ObsW2kL4nM6pO8qR0sT2uV4" -->
Def. Application linéaire $u \in \mathcal{L}(E,F)$::
$$
\forall (\lambda_1, \lambda_2) \in K^2, \; \forall (e_1, e_2) \in E^2, \; u(\lambda_1 e_1 + \lambda_2 e_2) = \lambda_1 u(e_1) + \lambda_2 u(e_2)
$$
<!-- basicblock-end -->

<!-- basicblock-start oid="ObsX3mL5oN7qP9rS1tU3vW5" -->
Prop. Image du sous-espace vectoriel engendré par $u \in \mathcal{L}(E,F)$::
$$
u(\mathrm{Vect}(\mathcal{F})) = \mathrm{Vect}(u(\mathcal{F}))
$$
<!-- basicblock-end -->

<!-- basicblock-start oid="ObsY4nO6pP8qR0sT2uV4wX6" -->
Prop. Image d'une famille libre par une application linéaire injective::
- Si $\mathcal{F}$ est une famille libre de $E$ et $u \in \mathcal{L}(E,F)$ est injective, alors $u(\mathcal{F})$ est une famille libre de $F$.
<!-- basicblock-end -->

<!-- basicblock-start oid="ObsZ5oP7qR9sT1uV3wX5yY7" -->
Def. Noyau $\mathrm{Ker}(u)$ d'une application linéaire $u \in \mathcal{L}(E,F)$::
$$
\mathrm{Ker}(u) = \{ e \in E \mid u(e) = 0_F \}
$$
<!-- basicblock-end -->

<!-- basicblock-start oid="ObsA6pQ8rS0tU2vW4xY6zZ8" -->
Prop. Caractérisation de l'injectivité d'une application linéaire par son noyau::
$$
u \in \mathcal{L}(E,F) \text{ est injective } \iff \mathrm{Ker}(u) = \{0_E\}
$$
<!-- basicblock-end -->

---
<!-- basicblock-start oid="ObsB7qR9sT1uV3wX5yY7zZ9" -->
Def. Image $\mathrm{Im}(u)$ d'une application linéaire $u \in \mathcal{L}(E,F)$::
$$
\mathrm{Im}(u) = u(E) = \{ u(e) \mid e \in E \}
$$
<!-- basicblock-end -->

<!-- basicblock-start oid="ObsC8rS0tU2vW4xY6zZ8aA0" -->
Prop. Caractérisation de la surjectivité d'une application linéaire par son image::
$$
u \in \mathcal{L}(E,F) \text{ est surjective } \iff \mathrm{Im}(u) = F
$$
<!-- basicblock-end -->

<!-- basicblock-start oid="ObsD9sT1uV3wX5yY7zZ9bB1" -->
Def. Rang d'une application linéaire $\mathrm{rg}(u)$::
$$
\mathrm{rg}(u) = \dim(\mathrm{Im}(u))
$$
<!-- basicblock-end -->

<!-- basicblock-start oid="ObsE0tU2vW4xY6zZ8aA0cC2" -->
Prop. Image d'une base de l'espace de départ par $u \in \mathcal{L}(E,F)$::
$$
\mathcal{B} = (e_1,\dots,e_n) \text{ base de } E \implies \mathrm{Im}(u) = \mathrm{Vect}(u(e_1),\dots,u(e_n))
$$
<!-- basicblock-end -->

<!-- basicblock-start oid="ObsF1uV3wX5yY7zZ9bB1dD3" -->
Prop. Inclusion des noyaux par composition $u \circ v$::
$$
\mathrm{Ker}(v) \subset \mathrm{Ker}(u \circ v)
$$
<!-- basicblock-end -->

<!-- basicblock-start oid="ObsG2vW4xY6zZ8aA0cC2eE4" -->
Prop. Caractérisation de la nullité de la composée $u \circ v$::
$$
u \circ v = 0_{\mathcal{L}(E,G)} \iff \mathrm{Im}(v) \subset \mathrm{Ker}(u)
$$
<!-- basicblock-end -->

<!-- basicblock-start oid="ObsH3wX5yY7zZ9bB1dD3fF5" -->
Th. Théorème noyau/image::
- $\mathrm{Im}(u)$ est isomorphe à tout supplémentaire de $\mathrm{Ker}(u)$ dans $E$.
<!-- basicblock-end -->

<!-- basicblock-start oid="ObsI4xY6zZ8aA0cC2eE4gG6" -->
Th. Théorème du rang ($E$ de dimension finie)::
$$
\dim(E) = \dim(\mathrm{Ker}(u)) + \mathrm{rg}(u)
$$
<!-- basicblock-end -->

<!-- basicblock-start oid="ObsJ5yY7zZ9bB1dD3fF5hH7" -->
Th. Estimations du rang d'une application linéaire $u \in \mathcal{L}(E,F)$ (dim finies)::
- $\mathrm{rg}(u) \le \dim(F)$, avec égalité si et seulement si $u$ est surjective
- $\mathrm{rg}(u) \le \dim(E)$, avec égalité si et seulement si $u$ est injective
<!-- basicblock-end -->

<!-- basicblock-start oid="ObsK6zZ8aA0cC2eE4gG6iI8" -->
Th. Rang et composition $u \circ v$ avec un isomorphisme::
- $\mathrm{rg}(u \circ v) \le \mathrm{rg}(u)$, avec égalité si $v$ est un isomorphisme
- $\mathrm{rg}(u \circ v) \le \mathrm{rg}(v)$, avec égalité si $u$ est un isomorphisme
<!-- basicblock-end -->

<!-- basicblock-start oid="ObsL7aA0cC2eE4gG6iI8jJ9" -->
Th. Théorème d'isomorphisme en dimension finie ($\dim(E) = \dim(F)$)::
- $u \in \mathcal{L}(E,F)$ est injective
- $u \in \mathcal{L}(E,F)$ est surjective
- $u \in \mathcal{L}(E,F)$ est bijective (isomorphisme)
<!-- basicblock-end -->

<!-- basicblock-start oid="ObsM8bB1dD3fF5hH7jJ9kK0" -->
Def. Projecteur sur $F$ parallèlement à $G$ ($E = F \oplus G$)::
$$
e = f + g \in F \oplus G \implies p(e) = f
$$
<!-- basicblock-end -->

<!-- basicblock-start oid="ObsN9cC2eE4gG6iI8jJ9lL1" -->
Prop. Relation entre le projecteur $p$ sur $F$ par. à $G$ et le projecteur $q$ sur $G$ par. à $F$::
$$
\mathrm{Id}_E = p + q
$$
<!-- basicblock-end -->

<!-- basicblock-start oid="ObsO0dD3fF5hH7jJ9lL1mM2" -->
Prop. Relation entre la symétrie $s$ et le projecteur $p$ associés à $E = F \oplus G$::
$$
s = p - q = 2p - \mathrm{Id}_E
$$
<!-- basicblock-end -->

<!-- basicblock-start oid="ObsP1eE4gG6iI8jJ9lL1nN3" -->
Th. Éléments caractéristiques d'un projecteur $p$ sur $F$ parallèlement à $G$::
- $F = \mathrm{Im}(p) = \mathrm{Ker}(p - \mathrm{Id}_E)$
- $G = \mathrm{Ker}(p)$
<!-- basicblock-end -->

<!-- basicblock-start oid="ObsQ2fF5hH7jJ9lL1nN3oO4" -->
Th. Supplémentarité des éléments caractéristiques d'un projecteur $p$::
$$
E = \mathrm{Ker}(p) \oplus \mathrm{Im}(p)
$$
<!-- basicblock-end -->

<!-- basicblock-start oid="ObsR3gG6iI8jJ9lL1nN3pP5" -->
Th. Caractérisation algébrique des projecteurs::
$$
p \in \mathcal{L}(E) \text{ est un projecteur } \iff p \circ p = p
$$
<!-- basicblock-end -->

<!-- basicblock-start oid="ObsS4hH7jJ9lL1nN3pP5qQ6" -->
Th. Éléments caractéristiques d'une symétrie $s$ autour de $F$ parallèlement à $G$::
- $F = \mathrm{Ker}(s - \mathrm{Id}_E)$ (vecteurs invariants)
- $G = \mathrm{Ker}(s + \mathrm{Id}_E)$ (vecteurs retournés)
<!-- basicblock-end -->

<!-- basicblock-start oid="ObsT5iI8jJ9lL1nN3pP5rR7" -->
Th. Caractérisation algébrique des symétries::
$$
s \in \mathcal{L}(E) \text{ est une symétrie } \iff s \circ s = \mathrm{Id}_E
$$
<!-- basicblock-end -->

<!-- basicblock-start oid="ObsU6jJ9lL1nN3pP5rR7sS8" -->
Def. Projections associées à une décomposition $E = E_1 \oplus \dots \oplus E_p$::
$$
e = \sum_{i=1}^p e_i \in \bigoplus_{i=1}^p E_i \implies p_i(e) = e_i
$$
<!-- basicblock-end -->

---

<!-- basicblock-start oid="ObsV7kK0mM2oO4qP6sS8tT9" -->
Prop. Éléments caractéristiques et relations des projections associées $p_i$::
- $\mathrm{Im}(p_i) = \mathrm{Ker}(p_i - \mathrm{Id}_E) = E_i$
- $\mathrm{Ker}(p_i) = \bigoplus_{j \neq i} E_j$
- $p_i^2 = p_i$
- $\forall j \neq i, \; p_i \circ p_j = 0$
<!-- basicblock-end -->

<!-- basicblock-start oid="ObsW8lL1nN3pP5rR7tT9uU0" -->
Def. Forme linéaire sur un $K$-espace vectoriel $E$::
- Une forme linéaire sur $E$ est une application linéaire de $E$ dans $K$.
<!-- basicblock-end -->

<!-- basicblock-start oid="ObsX9mM2oO4qP6sS8uU0vV1" -->
Def. Hyperplan d'un espace vectoriel $E$::
- Un hyperplan de $E$ est le noyau d'une forme linéaire non nulle sur $E$.
<!-- basicblock-end -->

<!-- basicblock-start oid="ObsY0nN3pP5rR7sS8vV1wW2" -->
Prop. Droite vectorielle supplémentaire d'un hyperplan $H$ ($x \notin H$)::
$$
E = \mathrm{Vect}(x) \oplus H
$$
<!-- basicblock-end -->

<!-- basicblock-start oid="ObsZ1oO4qP6sS8tT9wW2xX3" -->
Th. Caractérisations d'un hyperplan $H$ en dimension finie $n$::
- $H$ est un hyperplan de $E$
- $H$ est un sous-espace vectoriel de dimension $n-1$
- $H$ admet une équation cartésienne $a_1 x_1 + \dots + a_n x_n = 0$ non nulle dans une base de $E$
<!-- basicblock-end -->

<!-- basicblock-start oid="ObsA2pP5rR7sS8tT9xX3yY4" -->
Def. Structure de $K$-algèbre $(A, +, \cdot, \times)$::
- $(A, +, \times)$ est un anneau d'unité $1_A$
- $(A, +, \cdot)$ est un $K$-espace vectoriel de nul $0_A$
- Compatibilité : $\forall \lambda \in K, \; \forall (x,y) \in A^2, \; \lambda \cdot (x \times y) = (\lambda \cdot x) \times y = x \times (\lambda \cdot y)$
<!-- basicblock-end -->

<!-- basicblock-start oid="ObsB3qQ6sS8tT9uU0yY4zZ5" -->
Def. Sous-algèbre $B$ d'une $K$-algèbre $A$::
- $1_A \in B$
- $B$ est stable par combinaisons linéaires
- $B$ est stable par multiplication ($\forall (x,y) \in B^2, \; x \times y \in B$)
<!-- basicblock-end -->

<!-- basicblock-start oid="ObsC4rR7tT9uU0vV1zZ5aA6" -->
Def. Morphisme d'algèbres $f : A \to B$::
- $f(1_A) = 1_B$
- $f$ est une application linéaire
- $f$ est un morphisme multiplicatif ($\forall (x,y) \in A^2, \; f(x \times y) = f(x) \times f(y)$)
<!-- basicblock-end -->

<!-- basicblock-start oid="ObsD5sS8uU0vV1wW2aA6bB7" -->
Def. Évaluation d'un polynôme $P(X) = \sum_{k=0}^d \lambda_k X^k$ en $a \in A$::
$$
P(a) = \sum_{k=0}^d \lambda_k \cdot a^k \in A
$$
<!-- basicblock-end -->

<!-- basicblock-start oid="ObsE6tT9vV1wW2xX3bB7cC8" -->
Def. Polynôme annulateur d'un élément $a \in A$::
$$
P(a) = 0_A
$$
<!-- basicblock-end -->

<!-- basicblock-start oid="ObsF7uU0wW2xX3yY4cC8dD9" -->
Th. Morphisme d'évaluation $\varphi_a : K[X] \to A, P \mapsto P(a)$::
- $\varphi_a$ est un morphisme d'algèbres
- Son image $K[a] = \{P(a) \mid P \in K[X]\}$ est une sous-algèbre commutative de $A$
<!-- basicblock-end -->

<!-- basicblock-start oid="ObsG8vV1xX3yY4zZ5dD9eE0" -->
Th. Idéal des polynômes annulateurs $I_a$ et polynôme minimal $\pi_a$::
$$
I_a = \{P \in K[X] \mid P(a) = 0_A\} = \pi_a K[X]
$$
<!-- basicblock-end -->

<!-- basicblock-start oid="ObsH9wW2yY4zZ5aA6eE0fF1" -->
Th. Existence d'un polynôme annulateur non nul en dimension finie::
- Tout élément $a$ d'une algèbre $A$ de dimension finie possède au moins un polynôme annulateur non nul.
<!-- basicblock-end -->

<!-- basicblock-start oid="ObsI0xX3zZ5aA6bB7fF1gG2" -->
Prop. Majoration de l'indice de nilpotence::
- L'indice de nilpotence d'un endomorphisme est majoré par la dimension de l'espace.
<!-- basicblock-end -->

<!-- basicblock-start oid="ObsJ1yY4aA6bB7cC8gG2hH3" -->
Prop. Dimension minimale de l'intersection de $p$ hyperplans ($n = \dim(E)$)::
$$
\dim\left(\bigcap_{i=1}^p H_i\right) \ge n - p
$$
<!-- basicblock-end -->



















































