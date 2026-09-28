---
deck: math
---
# Espace vectoriel normé

---

<!-- basicblock-start oid="ObsA1b2C3d4E5f6G7h8I9j0K1" -->
Meth. Pour majorer un sup $\sup(X)$::
$$
(\forall x \in X, \; x \le M) \implies \sup(X) \le M
$$
<!-- basicblock-end -->

<!-- basicblock-start oid="ObsB2c3D4e5F6g7H8i9J0k1L2" -->
Meth. Pour nier l'équivalence de deux normes $N$ et $N'$::
$$
\exists (x_n)_n \in (E \setminus \{0\})^{\mathbb{N}}, \; \frac{N(x_n)}{N'(x_n)} \xrightarrow[n \to +\infty]{} +\infty \quad \text{ou} \quad \frac{N'(x_n)}{N(x_n)} \xrightarrow[n \to +\infty]{} +\infty
$$
<!-- basicblock-end -->

<!-- basicblock-start oid="ObsC3d4E5f6G7h8I9j0K1l2M3" -->
Meth. Pour nier la convergence d'une suite $(u_n)_n$::
- Expliciter deux suites extraites $(u_{\varphi(n)})_n$ et $(u_{\psi(n)})_n$ convergeant vers des limites distinctes.
<!-- basicblock-end -->

<!-- basicblock-start oid="ObsD4e5F6g7H8i9J0k1L2m3N4" -->
Meth. Étude d'une suite récurrente $u_{n+1} = f(u_n)$::
- Localiser la suite $(u_n)_n$ dans un ensemble $X$ stable par $f$.
- Étudier le signe de la fonction auxiliaire $g(x) = f(x) - x$ sur $X$.
- Raisonner graphiquement avec le graphe conjoint de $f$ et de la première bissectrice via le théorème de monotonie.
<!-- basicblock-end -->

<!-- basicblock-start oid="ObsE5f6G7h8I9j0K1l2M3n4O5" -->
Def. Segment $[A, B]$ dans un espace vectoriel $E$::
$$
[A, B] = \{ (1-\lambda) A + \lambda B, \; \lambda \in [0, 1] \}
$$
<!-- basicblock-end -->

<!-- basicblock-start oid="ObsF6g7H8i9J0k1L2m3N4o5P6" -->
Def. Partie convexe d'un espace vectoriel $E$::
$$
\forall (A, B) \in S^2, \; \forall t \in [0, 1], \; t A + (1-t) B \in S
$$
<!-- basicblock-end -->

<!-- basicblock-start oid="ObsG7h8I9j0K1l2M3n4O5p6Q7" -->
Def. Fonction convexe $f: I \to \mathbb{R}$::
$$
\forall (x, y) \in I^2, \; \forall \lambda \in [0, 1], \; f(\lambda x + (1-\lambda)y) \le \lambda f(x) + (1-\lambda) f(y)
$$
<!-- basicblock-end -->

<!-- basicblock-start oid="ObsH8i9J0k1L2m3N4o5P6q7R8" -->
Th. Inégalité de Jensen pour une fonction convexe $f: I \to \mathbb{R}$::
$$
\forall n \ge 2, \; \forall (x_1, \dots, x_n) \in I^n, \; \forall (\lambda_1, \dots, \lambda_n) \in (\mathbb{R}_+)^n \text{ t.q. } \sum_{i=1}^n \lambda_i = 1, \; f\left( \sum_{i=1}^n \lambda_i x_i \right) \le \sum_{i=1}^n \lambda_i f(x_i)
$$
<!-- basicblock-end -->

<!-- basicblock-start oid="ObsI9j0K1l2M3n4O5p6Q7r8S9" -->
Th. des trois pentes pour une fonction convexe $f: I \to \mathbb{R}$::
$$
\forall (a, b, c) \in I^3, \; a < b < c \implies \frac{f(b)-f(a)}{b-a} \le \frac{f(c)-f(a)}{c-a} \le \frac{f(c)-f(b)}{c-b}
$$
<!-- basicblock-end -->

<!-- basicblock-start oid="ObsJ0k1L2m3N4o5P6q7R8s9T0" -->
Th. Caractérisations de la convexité pour $f: I \to \mathbb{R}$ dérivable::
- $f$ est convexe sur $I$
- $f'$ est croissante sur $I$
- $f'' \ge 0$ sur $I$ (si $f$ est deux fois dérivable)
<!-- basicblock-end -->

<!-- basicblock-start oid="ObsK1l2M3n4O5p6Q7r8S9t0U1" -->
Form. Majorations usuelles de convexité et concavité::
- $\forall x \in \mathbb{R}, \; e^x \ge 1 + x$
- $\forall x \in \mathbb{R}, \; |\sin(x)| \le |x|$
- $\forall x > -1, \; \ln(1 + x) \le x$
<!-- basicblock-end -->

<!-- basicblock-start oid="ObsL2m3N4o5P6q7R8s9T0u1V2" -->
Prop. Propriété de la borne supérieure dans $\mathbb{R}$::
$$
\forall X \subset \mathbb{R}, \; (X \neq \emptyset \text{ et } X \text{ majorée}) \implies \sup(X) \text{ existe dans } \mathbb{R}
$$
<!-- basicblock-end -->

<!-- basicblock-start oid="ObsM3n4O5p6Q7r8S9t0U1v2W3" -->
Def. Norme sur un $K$-espace vectoriel $E$::
- Positivité : $\forall x \in E, \; \|x\| \ge 0$
- Homogénéité : $\forall \lambda \in K, \; \forall x \in E, \; \|\lambda x\| = |\lambda| \cdot \|x\|$
- Séparation : $\forall x \in E, \; \|x\| = 0 \implies x = 0_E$
- Inégalité triangulaire : $\forall (x, y) \in E^2, \; \|x + y\| \le \|x\| + \|y\|$
<!-- basicblock-end -->

<!-- basicblock-start oid="ObsN4o5P6q7R8s9T0u1V2w3X4" -->
Def. Distance associée à une norme $\|\cdot\|$ sur $E$::
$$
\forall (x, y) \in E^2, \; d(x, y) = \|y - x\|
$$
<!-- basicblock-end -->

<!-- basicblock-start oid="ObsO5p6Q7r8S9t0U1v2W3x4Y5" -->
Def. Norme euclidienne associée à un produit scalaire $(\cdot \mid \cdot)$::
$$
\forall x \in E, \; \|x\|_2 = \sqrt{(x \mid x)}
$$
<!-- basicblock-end -->

<!-- basicblock-start oid="ObsP6q7R8s9T0u1V2w3X4y5Z6" -->
Prop. Seconde inégalité triangulaire dans un EVN $(E, \|\cdot\|)$::
$$
\forall (x, y) \in E^2, \; \big| \|x\| - \|y\| \big| \le \|x - y\|
$$
<!-- basicblock-end -->

<!-- basicblock-start oid="ObsQ7r8S9t0U1v2W3x4Y5z6A7" -->
Def. Partie bornée d'un EVN $(E, \|\cdot\|)$::
$$
\exists M \in \mathbb{R}^+, \; \forall x \in X, \; \|x\| \le M
$$
<!-- basicblock-end -->

<!-- basicblock-start oid="ObsR8s9T0u1V2w3X4y5Z6a7B8" -->
Def. Fonction bornée $f: X \to E$ dans un EVN $(E, \|\cdot\|)$::
$$
\exists M \in \mathbb{R}^+, \; \forall x \in X, \; \|f(x)\| \le M
$$
<!-- basicblock-end -->

<!-- basicblock-start oid="ObsS9t0U1v2W3x4Y5z6A7b8C9" -->
Def. Boule ouverte et boule fermée dans un EVN $(E, \|\cdot\|)$::
$$
\begin{cases}
B(x, \epsilon) = \{ y \in E, \; \|y - x\| < \epsilon \} \cr
\overline{B}(x, \epsilon) = \{ y \in E, \; \|y - x\| \le \epsilon \}
\end{cases}
$$
<!-- basicblock-end -->

<!-- basicblock-start oid="ObsT0u1V2w3X4y5Z6a7B8c9D0" -->
Prop. Propriétés des boules dans un EVN::
- Toute boule est bornée.
- Toute boule est convexe.
<!-- basicblock-end -->

---

<!-- basicblock-start oid="ObsU1v2W3x4Y5z6A7b8C9d0E1" -->
Th. Normes usuelles dans une base $\mathcal{B}=(e_1,\dots,e_n)$ d'un EVN $E$::
- $N_1(x) = \|x\|_1 = \sum_{i=1}^n |x_i|$
- $N_2(x) = \|x\|_2 = \sqrt{\sum_{i=1}^n |x_i|^2}$
- $N_\infty(x) = \|x\|_\infty = \max_{1 \le i \le n} |x_i|$
<!-- basicblock-end -->

<!-- basicblock-start oid="ObsV2w3X4y5Z6a7B8c9D0e1F2" -->
Def. Norme de la convergence uniforme sur $\mathcal{B}(X, E)$::
$$
\forall f \in \mathcal{B}(X, E), \; N_\infty(f) = \|f\|_\infty = \sup_{x \in X} \|f(x)\|
$$
<!-- basicblock-end -->

<!-- basicblock-start oid="ObsW3x4Y5z6A7b8C9d0E1f2G3" -->
Th. Normes usuelles sur $\mathcal{C}^0([a,b], K)$::
- $N_1(f) = \|f\|_1 = \int_a^b |f(t)| \, \mathrm{d}t$ (norme de la convergence en moyenne)
- $N_2(f) = \|f\|_2 = \sqrt{\int_a^b |f(t)|^2 \, \mathrm{d}t}$ (norme de la convergence en moyenne quadratique)
- $N_\infty(f) = \|f\|_\infty = \sup_{t \in [a,b]} |f(t)|$ (norme de la convergence uniforme ou norme sup)
<!-- basicblock-end -->

<!-- basicblock-start oid="ObsX4y5Z6a7B8c9D0e1F2g3H4" -->
Def. Normes équivalentes sur un $K$-espace vectoriel $E$::
$$
\exists \alpha > 0, \; \exists \beta > 0, \; \forall x \in E, \; \begin{cases} N(x) \le \alpha N'(x) \cr N'(x) \le \beta N(x) \end{cases}
$$
<!-- basicblock-end -->

<!-- basicblock-start oid="ObsY5z6A7b8C9d0E1f2G3h4I5" -->
Prop. Comparaison des normes usuelles sur $K^n$::
- $\forall x \in K^n, \; \|x\|_\infty \le \|x\|_2 \le \sqrt{n} \|x\|_\infty$
- $\forall x \in K^n, \; \|x\|_\infty \le \|x\|_1 \le n \|x\|_\infty$
<!-- basicblock-end -->

<!-- basicblock-start oid="ObsZ6a7B8c9D0e1F2g3H4i5J6" -->
Th. Équivalence des normes en dimension finie::
$$
\dim(E) < +\infty \implies \text{toutes les normes sur } E \text{ sont équivalentes}
$$
<!-- basicblock-end -->

<!-- basicblock-start oid="ObsA7b8C9d0E1f2G3h4I5j6K7" -->
Def. Convergence d'une suite $(u_n)_n$ dans un EVN $(E, \|\cdot\|)$::
$$
u_n \xrightarrow[n \to +\infty]{} l \iff \|u_n - l\| \xrightarrow[n \to +\infty]{} 0
$$
<!-- basicblock-end -->

<!-- basicblock-start oid="ObsB8c9D0e1F2g3H4i5J6k7L8" -->
Prop. Suite réelle convergente vers une limite strictement positive::
$$
(u_n \xrightarrow[n \to +\infty]{} l > 0) \implies \exists n_0 \in \mathbb{N}, \; \forall n \ge n_0, \; u_n \ge \frac{l}{2}
$$
<!-- basicblock-end -->

<!-- basicblock-start oid="ObsC9d0E1f2G3h4I5j6K7l8M9" -->
Prop. Convergence d'une suite à valeurs entières::
- Toute suite convergente d'éléments de $\mathbb{Z}$ est stationnaire à partir d'un certain rang.
<!-- basicblock-end -->

<!-- basicblock-start oid="ObsD0e1F2g3H4i5J6k7L8m9N0" -->
Th. Bornitude d'une suite convergente::
- Toute suite convergente dans un EVN est bornée.
<!-- basicblock-end -->

<!-- basicblock-start oid="ObsE1f2G3h4I5j6K7l8M9n0O1" -->
Th. Convergence coordonnée par coordonnée dans une base $\mathcal{B}=(e_1, \dots, e_p)$::
$$
\sum_{i=1}^p u_{n,i} e_i \xrightarrow[n \to +\infty]{} \sum_{i=1}^p l_i e_i \iff \forall i \in [1; p], \; u_{n,i} \xrightarrow[n \to +\infty]{} l_i
$$
<!-- basicblock-end -->

<!-- basicblock-start oid="ObsF2g3H4i5J6k7L8m9N0o1P2" -->
Th. Convergence dans un espace produit $E_1 \times \dots \times E_p$::
$$
(u_{n,1}, \dots, u_{n,p}) \xrightarrow[n \to +\infty]{} (l_1, \dots, l_p) \iff \forall i \in [1; p], \; u_{n,i} \xrightarrow[n \to +\infty]{} l_i
$$
<!-- basicblock-end -->

<!-- basicblock-start oid="ObsG3h4I5j6K7l8M9n0O1p2Q3" -->
Th. de monotonie pour une suite réelle croissante $(u_n)_n$::
- $(u_n)_n$ admet une limite $l \in \mathbb{R} \cup \{+\infty\}$.
- $l < +\infty$ si et seulement si $(u_n)_n$ est majorée, et dans ce cas $l = \sup_{n \in \mathbb{N}} u_n$.
<!-- basicblock-end -->

<!-- basicblock-start oid="ObsH4i5J6k7L8m9N0o1P2q3R4" -->
Th. Suites adjacentes::
$$
\begin{cases} (u_n)_n \text{ croît, } (v_n)_n \text{ décroît} \cr u_n - v_n \xrightarrow[n \to +\infty]{} 0 \end{cases} \implies \exists l \in \mathbb{R}, \; \begin{cases} u_n \to l, \; v_n \to l \cr \forall n \in \mathbb{N}, \; u_n \le l \le v_n \end{cases}
$$
<!-- basicblock-end -->

<!-- basicblock-start oid="ObsI5j6K7l8M9n0O1p2Q3r4S5" -->
Def. Extractrice et suite extraite::
- **Extractrice :** Application $\varphi : \mathbb{N} \to \mathbb{N}$ strictement croissante.
- **Suite extraite :** Toute suite de la forme $(u_{\varphi(n)})_n$.
<!-- basicblock-end -->

<!-- basicblock-start oid="ObsJ6k7L8m9N0o1P2q3R4s5T6" -->
Th. Convergence des suites extraites::
$$
u_n \xrightarrow[n \to +\infty]{} l \implies \forall \varphi \text{ extractrice}, \; u_{\varphi(n)} \xrightarrow[n \to +\infty]{} l
$$
<!-- basicblock-end -->

<!-- basicblock-start oid="ObsK7l8M9n0O1p2Q3r4S5t6U7" -->
Prop. Convergence par suites d'indices pairs et impairs::
$$
u_n \xrightarrow[n \to +\infty]{} l \iff (u_{2n} \xrightarrow[n \to +\infty]{} l \quad \text{et} \quad u_{2n+1} \xrightarrow[n \to +\infty]{} l)
$$
<!-- basicblock-end -->

<!-- basicblock-start oid="ObsL8m9N0o1P2q3R4s5T6u7V8" -->
Def. Valeur d'adhérence d'une suite dans un EVN $(E, \|\cdot\|)$::
- $a \in E$ est une valeur d'adhérence de $(u_n)_n$ s'il existe une extractrice $\varphi$ telle que $u_{\varphi(n)} \xrightarrow[n \to +\infty]{} a$.
<!-- basicblock-end -->

<!-- basicblock-start oid="ObsM9n0O1p2Q3r4S5t6U7v8W9" -->
Th. Caractérisation des valeurs d'adhérence d'une suite dans un EVN::
$$
a \text{ est VA de } (u_n)_n \iff \forall \epsilon > 0, \; \forall n_0 \in \mathbb{N}, \; \exists n \ge n_0, \; u_n \in B(a, \epsilon)
$$
<!-- basicblock-end -->

<!-- basicblock-start oid="ObsN0o1P2q3R4s5T6u7V8w9X0" -->
Th. Unicité de la valeur d'adhérence d'une suite convergente::
- Si une suite $(u_n)_n$ converge dans un EVN, alors elle possède une unique valeur d'adhérence (qui est sa limite).
<!-- basicblock-end -->

---

<!-- basicblock-start oid="ObsO1p2Q3r4S5t6U7v8W9x0Y1" -->
Def. Voisinage d'un point $a \in E$ dans un EVN $(E, \|\cdot\|)$::
- Ensemble $V \subset E$ contenant une boule (ouverte ou fermée) de centre $a$ et de rayon $r > 0$.
<!-- basicblock-end -->

<!-- basicblock-start oid="ObsP2q3R4s5T6u7V8w9X0y1Z2" -->
Def. Point adhérent et adhérence $\overline{X}$ d'une partie $X \subset E$::
- **Point adhérent :** $a \in E$ tel que tout voisinage de $a$ rencontre $X$ ($\forall \epsilon > 0, \; B(a, \epsilon) \cap X \neq \emptyset$).
- **Adhérence $\overline{X}$ :** Ensemble des points adhérents à $X$ (on a toujours $X \subset \overline{X}$).
<!-- basicblock-end -->

<!-- basicblock-start oid="ObsQ3r4S5t6U7v8W9x0Y1z2A3" -->
Def. Point intérieur et intérieur $\mathring{X}$ d'une partie $X \subset E$::
- **Point intérieur :** $b \in X$ tel qu'il existe un voisinage de $b$ inclus dans $X$ ($\exists \epsilon > 0, \; B(b, \epsilon) \subset X$).
- **Intérieur $\mathring{X}$ :** Ensemble des points intérieurs à $X$ (on a toujours $\mathring{X} \subset X$).
<!-- basicblock-end -->

<!-- basicblock-start oid="ObsR4s5T6u7V8w9X0y1Z2a3B4" -->
Def. Frontière $\partial X$ d'une partie $X \subset E$::
$$
\partial X = \overline{X} \setminus \mathring{X}
$$
<!-- basicblock-end -->

<!-- basicblock-start oid="ObsS5t6U7v8W9x0Y1z2A3b4C5" -->
Th. Caractérisation séquentielle des points adhérents::
$$
a \in \overline{X} \iff \exists (x_n)_n \in X^{\mathbb{N}}, \; x_n \xrightarrow[n \to +\infty]{} a
$$
<!-- basicblock-end -->

<!-- basicblock-start oid="ObsT6u7V8w9X0y1Z2a3B4c5D6" -->
Def. Partie dense $X$ dans un EVN $E$::
- **Par voisinages :** $\forall e \in E, \; \forall \epsilon > 0, \; B(e, \epsilon) \cap X \neq \emptyset$
- **Séquentiellement :** $\forall e \in E, \; \exists (x_n)_n \in X^{\mathbb{N}}, \; x_n \xrightarrow[n \to +\infty]{} e$
(Autrement dit, $\overline{X} = E$).
<!-- basicblock-end -->

<!-- basicblock-start oid="ObsU7v8W9x0Y1z2A3b4C5d6E7" -->
Def. Ensemble ouvert et ensemble fermé dans un EVN::
- **Ouvert :** Partie $X$ dont tout point est intérieur à $X$ ($\mathring{X} = X$).
- **Fermé :** Partie dont le complémentaire est un ouvert.
<!-- basicblock-end -->

<!-- basicblock-start oid="ObsV8w9X0y1Z2a3B4c5D6e7F8" -->
Th. Caractérisation séquentielle des fermés::
$$
X \text{ est fermé} \iff \overline{X} = X \iff \Big( \forall (x_n)_n \in X^{\mathbb{N}}, \; x_n \xrightarrow[n \to +\infty]{} l \implies l \in X \Big)
$$
<!-- basicblock-end -->

<!-- basicblock-start oid="ObsW9x0Y1z2A3b4C5d6E7f8G9" -->
Th. Fermeture des sous-espaces vectoriels de dimension finie::
- Tout sous-espace vectoriel de dimension finie d'un EVN est une partie fermée.
<!-- basicblock-end -->

<!-- basicblock-start oid="ObsX0y1Z2a3B4c5D6e7F8g9H0" -->
Prop. Stabilité des ouverts et des fermés::
- Une union quelconque d'ouverts est un ouvert.
- Une intersection finie d'ouverts est un ouvert.
- Une intersection quelconque de fermés est un fermé.
- Une union finie de fermés est un fermé.
<!-- basicblock-end -->

<!-- basicblock-start oid="ObsY1z2A3b4C5d6E7f8G9h0I1" -->
Def. Fermé relatif, ouvert relatif et voisinage relatif dans $X \subset E$::
- **Fermé relatif de $X$ :** Intersection d'un fermé de $E$ avec $X$.
- **Ouvert relatif de $X$ :** Intersection d'un ouvert de $E$ avec $X$.
- **Voisinage relatif dans $X$ :** Intersection d'un voisinage de $E$ avec $X$.
<!-- basicblock-end -->

<!-- basicblock-start oid="ObsZ2a3B4c5D6e7F8g9H0i1J2" -->
Th. Caractérisation séquentielle d'un fermé relatif::
$$
Y \subset X \text{ fermé relatif de } X \iff \Big( \forall (y_n)_n \in Y^{\mathbb{N}}, \; (y_n \xrightarrow[n \to +\infty]{} x \text{ avec } x \in X) \implies x \in Y \Big)
$$
<!-- basicblock-end -->

<!-- basicblock-start oid="ObsA3b4C5d6E7f8G9h0I1j2K3" -->
Def. Partie compacte d'un EVN (Bolzano-Weierstrass)::
- Une partie $C \subset E$ est compacte si toute suite d'éléments de $C$ possède une valeur d'adhérence dans $C$ (i.e. admet une suite extraite convergeant dans $C$).
<!-- basicblock-end -->

<!-- basicblock-start oid="ObsB4c5D6e7F8g9H0i1J2k3L4" -->
Th. Produit d'ensembles compacts::
- Tout produit fini d'ensembles compacts est un ensemble compact.
<!-- basicblock-end -->

<!-- basicblock-start oid="ObsC5d6E7f8G9h0I1j2K3l4M5" -->
Th. Compacts en dimension finie::
$$
\dim(E) < +\infty \implies (C \subset E \text{ est compact} \iff C \text{ est fermé et borné})
$$
<!-- basicblock-end -->

<!-- basicblock-start oid="ObsD6e7F8g9H0i1J2k3L4m5N6" -->
Th. de Bolzano-Weierstrass dans un EVN de dimension finie::
- Soit $E$ un EVN de dimension finie. Toute suite bornée de $E$ possède au moins une valeur d'adhérence.
<!-- basicblock-end -->

<!-- basicblock-start oid="ObsE7f8G9h0I1j2K3l4M5n6O7" -->
Th. Valeur d'adhérence unique et convergence::
- Une suite d'un compact possédant une unique valeur d'adhérence converge dans ce compact.
- En dimension finie, une suite bornée possédant une unique valeur d'adhérence converge.
<!-- basicblock-end -->




