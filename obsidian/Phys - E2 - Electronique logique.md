---
deck: phys
---



# I - La logique combinatoire
Def. L'ensemble des opérations logiques pour lesquelles l'état de sortie dépend uniquement des variables d'entrée.

## 1 - Les portes logiques fondamentales
On considère deux états:
- HAUT / 1 / 5V / VRAI
- BAS    / 0 / 0V / FAUX
Les portes logiques sont des interrupteurs commandés en tension.
Toutes les portes sont considérés comme idéales, i.e.
- un courant d'entrée nul
- une impédence d'entrée infini.

Pour travailler -> besoin de l'[[Algèbre de Boole]]

### 1 - La porte Not:
Représentation ANSI/IEC:
-  1.

| e   | ~e  |
| --- | --- |
| 0   | 1   |
| 1   | 0   |

### 2 - La porte And
Représentation ANSI/IEC:
- 2.

| a   | b   | a.b |
| --- | --- | --- |
| 0   | 0   | 0   |
| 0   | 1   | 0   |
| 1   | 0   | 0   |
| 1   | 1   | 1   |
|     |     |     |
### 3 - La porte Or
- 3.

| a   | b   | a+b |
| --- | --- | --- |
| 0   | 0   | 0   |
| 0   | 1   | 1   |
| 1   | 0   | 1   |
| 1   | 1   | 1   |
|     |     |     |

## 2 - Propriété générales des opérateurs
### I - L'algèbre de Boole
Pour démontrer une égalité, on montre l'égalité des tables de vérités.
$$\forall a, a.0=0$$
$$\forall a, a+1=1$$
$$\forall a, a.1 = a$$
$$\forall a, a+0 = a$$
### II - Autres portes
- La porte Nor
- La porte Nand
- La porte Xor
- La porte Xnor

### III - Lois de morgan
$$\overline{a+b} = \overline a \cdot\overline b$$
$$\overline{a\cdot b} = \overline a+\overline b$$
Démo:

| a   | b   | $\overline a\cdot\overline b$ | $\overline a+\overline b$ | $\overline{a+b}$ | $\overline{a\cdot b}$ |
| --- | --- | ----------------------------- | ------------------------- | ---------------- | --------------------- |
| 0   | 0   | 1                             | 1                         | 1                | 1                     |
| 0   | 1   | 0                             |                           |                  |                       |
|     |     |                               |                           |                  |                       |
|     |     |                               |                           |                  |                       |
Porte Nand:
Elle permet la construction de toute les autres:
- **Not** par Nand(a,a)
- **And** par Not(Nand(a,b))
- **Or** par Nand(Not(a), Not(b))

# II - Logique séquentielle et stabilité
## 1 - Rétroaction et circuits astables

*Schéma avec 3 not en série bouclée*
En réalité, les portes ont un temps de réponse $\tau$. Et donc ici, $e(t+3\tau)=\overline{e(t)}$. On observe une oscillation.
On parle de système astable: Il n'exsite pas d'état logique stable.
Def: Logique séquentielle: L'état de sortie dépend des variables d'entrée et des états précédents de la sortie.
Il s'agit des systèmes bouclés, où ka sortie est réinjectée en entrée.

## 2 - Un exemple de circuit monostable: le convertisseur tension-fréquence.
- 4.
Filtre
- 5.
En complexe:
$$v = \frac{R}{R+\frac{1}{jC\omega}}n$$
$$(jRC\omega+1)v = jRC\omega n$$
On repasse en temporel:
$$RC\frac{dv}{dt}+v = RC\frac{du}{dt}$$
Or, $n(t)$ est la tension en sortie de porte logique. En dehors des bascule $n$ est continue, $\frac{du}{dt} = 0$.
On pose $\tau=RC$:
- $\tau (\frac{dv}{dt}) +v=0$
- $v(t) = Ae^{-t/\tau}$
Où $A$ est à determiner en fonction des C.I.

Notions:
- L'état HAUT est à la tension $e_0$
- L'état BAS est à la tension 0V
- La bascule des portes se fait à $\frac{e_{0}}{2}$
En réalité:
- $e>\frac{e_{0}}{2}$: Etat Haut
- $e<\frac{e_{0}}{2}$: Etat Bas

### Cas 1
On suppose $e(t)=e_{0}$ "depuis longtemps".
Si un état stable est atteint, le condensateur est déchargé, $n(t) = v(t) = 0$.
Si $v(t)=0$ alors $s(t)=e_{0}$
Donc, en entrée, 6.
Donc, $n=0$, et le condensateur est bien déchargé.
Donc cet état est stable, s'il est atteint.

### Cas 2
$e(t)$ bascule à $0$.
Table de vérité -> un 0 en entrée impose une sortie à 1.
donc: $n(t<0)=0$ et $n(t=0)=e_{0}$, et ce pour toute valeur de l'autre entrée.
Mais la tension aux bornes d'un condensateur est une fonction continue du temps. Donc $u_{c} = n-v$ est continue, et ainsi $n(0^+)=v(0^+)=e_{0}$.
Or $v(t) = A\cdot e^{-t/\tau}$, avec $A(t>0)=e_{0}$.

Lorsque $v(t_{b})=\frac{e_{0}}{2}$ . $e_{0}e^{-t_{b}/\tau}=e_{0}$ . $t_{b} = \frac{\ln(2)}{\tau}$, ce qui bacule la porte pendant $t_{b}$.
Rq: Les temps de bascule des portes sont négligés.

Voir schéma...
On parle de système monostable:
- L'état de sortie  $s=1$ est stable
- L'état de sortie $s=0$ est instable et dure toujours la même durée.



---


<!-- basicblock-start oid="ObsA1b2c3d4e5f6g7h8i9j0" -->
Def. Logique combinatoire::
$$
s = f(e_1, e_2, \dots, e_n)
$$
<!-- basicblock-end -->

<!-- basicblock-start oid="ObsB2c3d4e5f6g7h8i9j0k1" -->
Prop. Impédance d'entrée des portes logiques idéales::
- Impédance d'entrée infinie ($Z_e = +\infty$)
- Courants d'entrée nuls ($i_e = 0$)
- Absence d'effet de charge lors de la mise en cascade
<!-- basicblock-end -->

<!-- basicblock-start oid="ObsC3d4e5f6g7h8i9j0k1l2" -->
Def. Table de vérité::
- Tableau recensant les états logiques de sortie pour toutes les combinaisons d'états d'entrée
- États logiques : 1 (Vrai / Activé) ou 0 (Faux / Désactivé)
<!-- basicblock-end -->

<!-- basicblock-start oid="ObsD4e5f6g7h8i9j0k1l2m3" -->
Form. Table de vérité de la porte NOT ($e \to \bar{e}$)::
$$
\begin{array}{|c|c|} \hline e & \bar{e} \\ \hline 0 & 1 \\ 1 & 0 \\ \hline \end{array}
$$
<!-- basicblock-end -->

<!-- basicblock-start oid="ObsE5f6g7h8i9j0k1l2m3n4" -->
Form. Table de vérité de la porte AND ($a, b \to a \cdot b$)::
$$
\begin{array}{|c|c|c|} \hline a & b & a \cdot b \\ \hline 0 & 0 & 0 \\ 1 & 0 & 0 \\ 0 & 1 & 0 \\ 1 & 1 & 1 \\ \hline \end{array}
$$
<!-- basicblock-end -->

<!-- basicblock-start oid="ObsF6g7h8i9j0k1l2m3n4o5" -->
Form. Table de vérité de la porte OR ($a, b \to a + b$)::
$$
\begin{array}{|c|c|c|} \hline a & b & a + b \\ \hline 0 & 0 & 0 \\ 1 & 0 & 1 \\ 0 & 1 & 1 \\ 1 & 1 & 1 \\ \hline \end{array}
$$
<!-- basicblock-end -->

<!-- basicblock-start oid="ObsG7h8i9j0k1l2m3n4o5p6" -->
Form. Table de vérité de la porte NAND ($a, b \to \overline{a \cdot b}$)::
$$
\begin{array}{|c|c|c|} \hline a & b & \overline{a \cdot b} \\ \hline 0 & 0 & 1 \\ 1 & 0 & 1 \\ 0 & 1 & 1 \\ 1 & 1 & 0 \\ \hline \end{array}
$$
<!-- basicblock-end -->

<!-- basicblock-start oid="ObsH8i9j0k1l2m3n4o5p6q7" -->
Form. Table de vérité de la porte NOR ($a, b \to \overline{a + b}$)::
$$
\begin{array}{|c|c|c|} \hline a & b & \overline{a + b} \\ \hline 0 & 0 & 1 \\ 1 & 0 & 0 \\ 0 & 1 & 0 \\ 1 & 1 & 0 \\ \hline \end{array}
$$
<!-- basicblock-end -->

<!-- basicblock-start oid="ObsI9j0k1l2m3n4o5p6q7r8" -->
Prop. Éléments neutres et absorbants de l'algèbre de Boole::
- $a + 0 = a$ ($0$ neutre pour $+$)
- $a + 1 = 1$ ($1$ absorbant pour $+$)
- $a \cdot 0 = 0$ ($0$ absorbant pour $\cdot$)
- $a \cdot 1 = a$ ($1$ neutre pour $\cdot$)
<!-- basicblock-end -->

<!-- basicblock-start oid="ObsJ0k1l2m3n4o5p6q7r8s9" -->
Form. Table de vérité de la porte XOR ($a, b \to a \oplus b$)::
$$
\begin{array}{|c|c|c|} \hline a & b & a \oplus b \\ \hline 0 & 0 & 0 \\ 1 & 0 & 1 \\ 0 & 1 & 1 \\ 1 & 1 & 0 \\ \hline \end{array}
$$
<!-- basicblock-end -->

<!-- basicblock-start oid="ObsK1l2m3n4o5p6q7r8s9t0" -->
Form. Expression booléenne de l'opérateur XOR ($a \oplus b$)::
$$
a \oplus b = \bar{a} \cdot b + a \cdot \bar{b}
$$
<!-- basicblock-end -->

<!-- basicblock-start oid="ObsL2m3n4o5p6q7r8s9t0u1" -->
Def. Opérateur XNOR ($a \odot b$)::
$$
a \odot b = \overline{a \oplus b}
$$
<!-- basicblock-end -->

<!-- basicblock-start oid="ObsM3n4o5p6q7r8s9t0u1v2" -->
Th. Première loi de de Morgan::
$$
\overline{a + b} = \bar{a} \cdot \bar{b}
$$
<!-- basicblock-end -->

<!-- basicblock-start oid="ObsN4o5p6q7r8s9t0u1v2w3" -->
Th. Seconde loi de de Morgan::
$$
\overline{a \cdot b} = \bar{a} + \bar{b}
$$
<!-- basicblock-end -->

<!-- basicblock-start oid="ObsO5p6q7r8s9t0u1v2w3x4" -->
Form. Réalisation de la fonction NOT uniquement avec NAND::
$$
\bar{a} = \overline{a \cdot a}
$$
<!-- basicblock-end -->

<!-- basicblock-start oid="ObsP6q7r8s9t0u1v2w3x4y5" -->
Form. Réalisation de la fonction AND uniquement avec NAND::
$$
a \cdot b = \overline{\overline{a \cdot b}}
$$
<!-- basicblock-end -->

<!-- basicblock-start oid="ObsQ7r8s9t0u1v2w3x4y5z6" -->
Form. Réalisation de la fonction OR uniquement avec NAND::
$$
a + b = \overline{\bar{a} \cdot \bar{b}} = \overline{\overline{a \cdot a} \cdot \overline{b \cdot b}}
$$
<!-- basicblock-end -->

<!-- basicblock-start oid="ObsR8s9t0u1v2w3x4y5z6a7" -->
Def. Groupe logique complet::
- Ensemble d'opérateurs permettant de réaliser toutes les fonctions booléennes
- Exemples : l'opérateur NAND seul, l'opérateur NOR seul
<!-- basicblock-end -->

<!-- basicblock-start oid="ObsS9t0u1v2w3x4y5z6a7b8" -->
Def. Système astable::
- Système bouclé ne possédant aucun état stable
- Présence d'une oscillation permanente due au temps de propagation $\tau$ des portes
<!-- basicblock-end -->

<!-- basicblock-start oid="ObsT0u1v2w3x4y5z6a7b8c9" -->
Def. Logique séquentielle::
- La sortie dépend des entrées instantanées et des états antérieurs (histoire du système)
- Système bouclé réinjectant tout ou partie de la sortie sur l'entrée
<!-- basicblock-end -->

---
<!-- basicblock-start oid="ObsU1v2w3x4y5z6a7b8c9d0" -->
Form. Équation différentielle d'un monostable (convertisseur $U \to f$)::
$$
R C \frac{\mathrm{d}s}{\mathrm{d}t} + s = E
$$
<!-- basicblock-end -->

<!-- basicblock-start oid="ObsV2w3x4y5z6a7b8c9d0e1" -->
Def. Bascule RS::
- Système séquentiel de base à deux entrées ($R$ : Reset, $S$ : Set) et une sortie
- Permet la mémorisation d'un état logique ($1$ bit)
<!-- basicblock-end -->

<!-- basicblock-start oid="ObsW3x4y5z6a7b8c9d0e1f2" -->
Form. Table de vérité de la bascule RS (à portes NOR)::
$$
\begin{array}{|c|c|c|c|} \hline R & S & Q_n & Q_{n+1} \\ \hline 0 & 0 & Q_n & Q_n \text{ (Maintien/Mémorisation)} \\ 0 & 1 & Q_n & 1 \text{ (Set)} \\ 1 & 0 & Q_n & 0 \text{ (Reset)} \\ 1 & 1 & Q_n & \text{Interdit (État indéterminé)} \\ \hline \end{array}
$$
<!-- basicblock-end -->

<!-- basicblock-start oid="ObsX4y5z6a7b8c9d0e1f2g3" -->
Prop. État interdit de la bascule RS NOR ($R=1, S=1$)::
- Force les deux sorties $Q$ et $\bar{Q}$ à $0$ simultanément
- Induit une instabilité lors de la transition simultanée à $0$
<!-- basicblock-end -->

<!-- basicblock-start oid="ObsY5z6a7b8c9d0e1f2g3h4" -->
Form. Équation caractéristique de la bascule RS::
$$
Q_{n+1} = S + \bar{R} \cdot Q_n \quad \text{avec } R \cdot S = 0
$$
<!-- basicblock-end -->

<!-- basicblock-start oid="ObsZ6a7b8c9d0e1f2g3h4i5" -->
Def. Bascule RSH (ou RS synchrone)::
- Bascule RS dotée d'une entrée d'horloge $H$ (ou de validation $E$)
- La prise en compte des entrées $R$ et $S$ n'intervient que lorsque $H=1$
<!-- basicblock-end -->

<!-- basicblock-start oid="ObsA7b8c9d0e1f2g3h4i5j6" -->
Form. Table de vérité de la bascule RSH::
$$
\begin{array}{|c|c|c|c|} \hline H & R & S & Q_{n+1} \\ \hline 0 & \times & \times & Q_n \\ 1 & 0 & 0 & Q_n \\ 1 & 0 & 1 & 1 \\ 1 & 1 & 0 & 0 \\ 1 & 1 & 1 & \text{Interdit} \\ \hline \end{array}
$$
<!-- basicblock-end -->

<!-- basicblock-start oid="ObsB8c9d0e1f2g3h4i5j6k7" -->
Def. Bascule D (Data)::
- Bascule synchrone résolvant le problème de l'état interdit de la bascule RS
- Obtenue à partir d'une bascule RSH en imposant $R = \bar{S}$ avec $S = D$
<!-- basicblock-end -->

<!-- basicblock-start oid="ObsC9d0e1f2g3h4i5j6k7l8" -->
Form. Équation caractéristique de la bascule D::
$$
Q_{n+1} = D \quad (\text{lorsque } H=1)
$$
<!-- basicblock-end -->

<!-- basicblock-start oid="ObsD0e1f2g3h4i5j6k7l8m9" -->
Form. Table de vérité de la bascule D::
$$
\begin{array}{|c|c|c|} \hline H & D & Q_{n+1} \\ \hline 0 & \times & Q_n \\ 1 & 0 & 0 \\ 1 & 1 & 1 \\ \hline \end{array}
$$
<!-- basicblock-end -->

<!-- basicblock-start oid="ObsE1f2g3h4i5j6k7l8m9n0" -->
Def. Bascule JK::
- Bascule synchrone éliminant l'état interdit de la bascule RS
- Pour $J=1$ et $K=1$, la sortie bascule à l'état complémentaire ($Q_{n+1} = \bar{Q}_n$)
<!-- basicblock-end -->

<!-- basicblock-start oid="ObsF2g3h4i5j6k7l8m9n0o1" -->
Form. Table de vérité de la bascule JK::
$$
\begin{array}{|c|c|c|c|} \hline H & J & K & Q_{n+1} \\ \hline 1 & 0 & 0 & Q_n \text{ (Maintien)} \\ 1 & 0 & 1 & 0 \text{ (Reset)} \\ 1 & 1 & 0 & 1 \text{ (Set)} \\ 1 & 1 & 1 & \bar{Q}_n \text{ (Basculement / Toggle)} \\ \hline \end{array}
$$
<!-- basicblock-end -->

<!-- basicblock-start oid="ObsG3h4i5j6k7l8m9n0o1p2" -->
Form. Équation caractéristique de la bascule JK::
$$
Q_{n+1} = J \cdot \bar{Q}_n + \bar{K} \cdot Q_n
$$
<!-- basicblock-end -->

<!-- basicblock-start oid="ObsH4i5j6k7l8m9n0o1p2q3" -->
Def. Déclenchement sur front (Edge-Triggering)::
- La bascule ne prend en compte l'état de ses entrées qu'au moment précis de la transition de l'horloge (front montant $\uparrow$ ou descendant $\downarrow$)
<!-- basicblock-end -->

<!-- basicblock-start oid="ObsI5j6k7l8m9n0o1p2q3r4" -->
Def. Bascule T (Toggle)::
- Bascule JK dont les entrées $J$ et $K$ sont reliées ensemble à l'état $1$ ($J=K=1$)
- Diviseur de fréquence par $2$ ($Q_{n+1} = \bar{Q}_n$ à chaque top d'horloge)
<!-- basicblock-end -->

<!-- basicblock-start oid="ObsJ6k7l8m9n0o1p2q3r4s5" -->
Def. Entrées synchrones vs asynchrones::
- Entrées synchrones ($D, J, K, R, S$) : actives uniquement lors des tops d'horloge
- Entrées asynchrones ($Preset, Clear$) : actives immédiatement et prioritaires sur l'horloge
<!-- basicblock-end -->

<!-- basicblock-start oid="ObsK7l8m9n0o1p2q3r4s5t6" -->
Prop. Rôle des entrées asynchrones Preset et Clear::
- $Preset$ (ou $Set$) : force immédiatement la sortie $Q$ à $1$
- $Clear$ (ou $Reset$) : force immédiatement la sortie $Q$ à $0$
<!-- basicblock-end -->
---












