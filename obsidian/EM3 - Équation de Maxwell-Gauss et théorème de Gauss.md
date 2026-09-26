---
deck: phys
---


# I - Equation de Maxwell-Gauss
## 1 - Enoncé
<!-- basicblock-start oid="ObsRdTxODgoTl4dT8oUNrCYA" -->
Loi. 1ère équation de Maxwell-Gauss::
$$
\forall M,\;\forall t,\;\mathrm{div}\overrightarrow{E(M,t)}=\frac{\rho(M,t)}{\varepsilon_{0}}
$$
<!-- basicblock-end -->
<!-- basicblock-start oid="Obsxrocn5932CWoSzHwqwg5K" -->
Def. Qu'est-ce qu'$\varepsilon_{0}$ ?::
La permittivité diélectrique du vide.
<!-- basicblock-end -->


Le champ $\overrightarrow{E(M,t)}$ s'écrit:
$$
\overrightarrow{E(x,y,z,t)}=E_{x}(x,y,z,t)\overrightarrow{e_{x}}+E_{y}(x,y,z,t)\overrightarrow{e_{y}}+E_{z}(x,y,z,t)\overrightarrow{e_{z}}
$$
Connaissant $\rho$, on ne peut pas retrouver $\overrightarrow{E}$, pas assez d'équation.

## 2 - Principe de Curie

On appelle **élément de symétrie** toute transformation géométrique qui laisse cette objet invariant (= en égale correspondance avec lui-même).
*Ex*: Un cube possède ses rotations et ses symétries, mais en nombre finis, alors que la sphère c'est en nombre infinis. Si je colorie les faces de mon cube, je ne peux plus aussi facilement le faire tourner/symétriser.
**Principe de Mr. Curie (1894)**
- Lorsque certaines causes produisent certains effets, les éléments de symétries des causes doivent se retrouver dans les effets.
- Lorsque certains effets révèlent une dissymétrie, elle doit se retrouver dans les causes.
- Un effet a au moins les symétries de sa cause.
**Rappel de géométrie**
Un plan de symétrie est un plan qui divise l'espace en deux parties identiques et superposables quand on effectue une réflexion par rapport à ce plan.
Un plan d'antisymétrie transforme chaque propriété de l'espace en son opposé par reflexion.
**Application**
*ex*: sphère uniforme chargée en volume
$$
\rho(r,\theta,\varphi,t)=\begin{cases}
\rho_{0}\text{ si }r<R  \\
O \text{ sinon}
\end{cases}
$$
Soit un point $M$ quelconque.
Toute rotation autour de l'axe $\overrightarrow{OM}$ laisse la situation inchangée.
Le champ $\overrightarrow{E}$ doit respecter cette symétrie. On dis que:
$\overrightarrow{E}\in$ tout les plans de symétrie passant par $M$.

Si on place une charge $q$ sans vitesse initiale, en $M$, le champs électrique ne peut la déplacer que sur l'axe $\overrightarrow{OM}$.
Tout plan contenant $\overrightarrow{OM}$ est un plan de symétrie.

De plus, on oublie le point $M$.
- Les rotations d'angle $\theta$ ou $\varphi$ laisse la sphère invariante.
- De même pour les translations de temps.
$\rho$ indépendant de $\theta ,\;\varphi \text{ et }t,\;\implies \overrightarrow{E(r,\theta,\varphi,t)}=\overrightarrow{E(r)}$.
D'où $\overrightarrow{E(M,t)}=E(r)\overrightarrow{e_{r}}$
On passe de 12 trucs inconnus à 1.

**Principe de Superposition**
Maxwell-gauss est linéaire: on peut sommer ses équations.
Un problème sans symétrie peut être décomposé en sous problèmes symétrique.
*ex "classique"*:
Une sphère pleine - une plus petite sphère:
$$
\rho = \begin{cases}
0\text{ si }|OM_{1}|>R_{1} \\
0\text{ si }|OM_{2}|<R_{2} \\
\rho_{0} \text{ sinon}
\end{cases}
$$
On peut la voir comme la somme de deux sphère, et donc trouver plein de symétries, puis trouver $\overrightarrow{E}$ final par principe de superposition.

## 3 - Théorème de Gauss
<!-- basicblock-start oid="ObsRsV2YxOyxcw67bKn3XKz2" -->
Loi. Formule de Green-Ostrogradski::
$$
\iiint_{V}\mathrm{div}\overrightarrow{E(M)}\mathrm{d}V=\oint \int_{S}\overrightarrow{E(M)}\cdot \overrightarrow{\mathrm{d}S}.
$$
<!-- basicblock-end -->
Soit un champ vectoriel $\overrightarrow{A(M)}$ définie sur un volume $V$ de surface fermée de contour $S$.
ça veut dire qu'on peut calculer la divergence d'un volume juste en regardant ce qu'il se passe à sa surface, en échange avec l'extérieur.
formule de stockes?

<!-- basicblock-start oid="ObsSkFoo4AB9FXTnJaG62ZFA" -->
Th. de Gauss::
$$
\varphi_{S}(\overrightarrow{E})=\frac{Q_{\text{dans }S}}{\varepsilon_{0}}
$$
<!-- basicblock-end -->
Soit un volume $V$ quelconque de surface fermée $S$.
$$
\phi_{s}(\overrightarrow{E})=\oint \int_{S}\overrightarrow{E}\cdot \overrightarrow{\mathrm{d}S}=\iiint_{V}\mathrm{div}\overrightarrow{E}\cdot \mathrm{d}V=\iiint_{V}\frac{\rho}{\varepsilon_{0}}\mathrm{d}V=\frac{1}{\varepsilon_{0}}\iint_{V}S\mathrm{d}V=\frac{Q_{\text{intérieur à }S}}{\varepsilon_{0}}
$$
Pour les distribution de charge à "Haut degré de symétrie", le théorème de Gauss limite les calculs.
**Rq**
Si $\rho=0$, $\overrightarrow{E}$ est à flux conservatif. i.e. Tout le champ entrant ressort.
Construisons un tube de champs:
- S'appuie sur les lignes de champs
- se ferme orthogonalement aux lignes.
Ainsi, le flux de cette surface est la somme de celui à l'entrée, sur les cotés, et à la sortie.
La partie latérale vaut 0 par définition
Et on trouve en égalisant avec 0 que $E_{\text{entrée}}S_{\text{entrée}}=E_{\text{sortie}}S_{\text{sortie}}$.

**Méthode**
On peut appliquer le théorème de Gauss sur n'importe quel surface.
On va choisir des surfaces de Gauss tel que le calcul soit simple:
- $\overrightarrow{E}\cdot \overrightarrow{\mathrm{d}S}=0$, flux nul
- $\overrightarrow{E}$ constant sur $\mathrm{d}S$.

**Rq**
Dans le cas statique, on peut utiliser $\overrightarrow{E}-\overrightarrow{ \mathrm{grad}}V$pour calculer V.

**Analogie avec la gravitation**
$$
F_{1\to{2}}=-\mathscr{G}\frac{m_{1}m_{2}}{r^{2}}\overrightarrow{u}
$$
$$
\overrightarrow{F_{1\to2}}=\frac{q_{1}q_{2}}{4\pi\varepsilon_{0}r^{2}}
$$
<!-- basicblock-start oid="ObslddyIpZvLKISfRJEAaxYN" -->
Th. de Gauss gravitationnel::
$$
\oint \int_{S}\overrightarrow{G}\cdot \overrightarrow{\mathrm{d}S}=-4\pi \mathscr{G}M_{\text{intérieur a }S}
$$
<!-- basicblock-end -->

# II - Exemple de calculs de champs
## 1 - La charge ponctuelle
On place $q$ en $O$.
On cherche $\overrightarrow{E}$.
1. Invariance et symétrie
- Toute rotation $\theta,\varphi$ laisse la distribution inchangée
- De même pour la translation de temps
Donc $\overrightarrow{E(r,\theta,\varphi,t)}=\overrightarrow{E(r)}$
- Plaçons $M$ quelconque
- Tout plan contenant $OM$ est plan de symétrie
- Donc $\overrightarrow{E}\in$ tout les plans contenant $OM$
Donc $\overrightarrow{E(M,t)}=E(r)\overrightarrow{e_{r}}$.

2. Choix de la surface de Gauss
On veut une surface telle que $\overrightarrow{E}\cdot \overrightarrow{\mathrm{d}S}=0$ ou $=\pm E\mathrm{d}S$.
On prend un sphère de rayon $r$.

3. Calcul du flux
$$
\begin{flalign*}
\oint \int_{S}\overrightarrow{E}\cdot \overrightarrow{\mathrm{d}S}&=\iint E(x)dS&&\cr
&=E(r)\iint \mathrm{d}S&&\cr
&=E(r)4\pi r^{2}&&\cr
\end{flalign*}
$$
4. Application du théorème
$$
\oint \int_{S}\overrightarrow{E}\cdot \overrightarrow{\mathrm{d}S}=\frac{Q_{\text{int}}}{\varepsilon_{0}}
$$
Or $Q_{\text{int}}=q$
donc
$$
\overrightarrow{E(r)}=\frac{q}{4\pi\varepsilon_{0}r^{2}}\overrightarrow{e_{r}}
$$

## 2 - Sphère chargée uniformément en volume
1. Invariance et symétrie
Voir plus haut (à refaire quand même à chaque fois)
2. Choix de la surface de Gauss
De même, sphère de rayon $r$.
3. Calcul du flux
de même:
$$
\oint \int_{S}\overrightarrow{E}\cdot \overrightarrow{\mathrm{d}S}=E(r)4\pi r^{2}
$$
4. Application du théorème
- Si $r<R$
$Q_{\text{int}}=V\rho=\frac{4}{3}\pi r^{3}\rho$
D'où $\overrightarrow{E(r)}=\frac{\rho r}{3\varepsilon_{0}}\overrightarrow{e_{r}}$
- Si $r>R$
$Q_{\text{int}}=Q_{\text{total}}$
$\overrightarrow{E(r)}=\frac{Q_{\text{tot}}}{4\pi\varepsilon_{0}r^{2}}\overrightarrow{e_{r}}$

**Rq**
Si $r>R$, on retrouve la même chose qu'avec une particule, ce qui permet de considérer les objets comme telle en première année.



