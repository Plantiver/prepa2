---
deck: phys
---

# I - Description microscopique et mésoscopique des sources
## 1 - Distribution des charges
<!-- basicblock-start oid="ObshIJHUDO6xotjAd5CEyU98" -->
Val. La charge élémentaire (exacte)::
$$
e=1.602176634\cdot 10^{-19} C.
$$
<!-- basicblock-end -->

Une charge unique est difficilement observable.
On définit le volume mésoscopique.
<!-- basicblock-start oid="ObsoilstuOO3L71QLYvE4i2i" -->
Def. Echelle mésoscopique::
- Echelle à laquelle on ne voit plus les particules, mais les variables d'états sont homogènes
- micro $<<$ méso $<<$ macro.
<!-- basicblock-end -->
Pour un volume mésoscopique de volume $\tau$ contenant $Q$ charges:
<!-- basicblock-start oid="Obsg1ngK0PY7nPW4vGh0L6vC" -->
Def. Densité volumique de charge::
$$
\rho=\frac{Q}{\tau}
$$
avec $Q$ la quantité de charge dans le volume $\tau$.
<!-- basicblock-end -->
Pour un volume macroscopique, on définit $\rho(M)$ qui dépend de $M$. La charge contenue dans un volume infinitésimal autour de $M$, $\mathrm{d}\tau$, vaut $dq = \rho \mathrm{d}\tau$.
<!-- basicblock-start oid="ObsCq6jAs7DFHZBW8o8LTbll" -->
Prop. Charge totale dans un volume::
$$
Q=\iiint_{V}\rho \mathrm{d}\tau.
$$
<!-- basicblock-end -->
Rq: En générale, la matière est électriquement neutre ($\rho$ et $Q$ sont nuls).
Autres descriptions (même formule en moins de dimensions):
- densité surfacique
- densité linéique
Ce sont en fait des limites, lorsque l'épaisseur ou la surface deviennent nulles.

## 2 - La distribution de courants
Def. Le courant électrique::
Déplacement d'ensemble de particules porteuses de charges mobiles (très souvent des électrons).

<!-- basicblock-start oid="ObsWIpBZf8IH9am3s80axobH" -->
Def. L'intensité électrique::
Mesure (/quantification) du courant électrique:
$$
i(t)=\frac{\delta q}{\mathrm{d}t}
$$
<!-- basicblock-end -->
- $\delta$ grandeur d'échange
- $\mathrm{d}$ grandeur stocké
Rq: pour un condensateur, on a un stock de charge, donc on peut écrire $\mathrm{d}q$.

Dans le cas constant:
$$
I=\frac{\delta q}{\mathrm{d}t}=\frac{Q}{\Delta t}
$$

Pour $1A$ pendant $1s$:
$$
N=\frac{Q}{e}=\frac{I\Delta t}{e}\sim10^{19}
$$
électrons qui traversent.
Cette valeur permet de négliger l'action individuelle des charges et d'étudier le mouvement d'ensemble.

Voir Sch...
On note $\bar{v}$ la vitesse moyenne des particules.
$$
\bar{v}=\frac{1}{N}\sum v_{i}
$$
L'intensité pendant $\Delta t$:
$$
I=\frac{Q}{\Delta t}
$$
Avec $Q$ la charge qui traversent $S$ pendant $\Delta t$.
Elles seront toutes dans le volume de largeur $\bar{v}\Delta t$ devant $S$.
Si on note $n$ la densité numérique de charges libres (=susceptible de bouger).
Dans le cuivre: $n\simeq 10^{28}m^{-3}$.

Donc:
$$
Q=en\bar{v}\Delta tS\implies I=en\bar{v}S
$$
A.N. $\implies$ Les $e^{-}$ sont lents.
mais tous ensemble dans le cadre de l'ARQS.


### Vecteur densité de courant
<!-- basicblock-start oid="Obsw8Sm7eh9jhXn5idC1saIn" -->
Def. Vecteur densité de courant::
$$
\overrightarrow{j}=nq \overrightarrow{v}=\rho_{m} \overrightarrow{v}
$$
<!-- basicblock-end -->

$n$: densité numérique de charge.
$q$: charge d'un porteur de charge.
$\rho_{m}=nq$: densité volumique de charges mobiles (si libre, $\rho_{l}$)
$\overrightarrow{v}$: vecteur vitesse moyen des porteurs de charges

S'il y a plusieurs types de porteurs de charge en mouvement:
$$
\overrightarrow{j}=\sum \overrightarrow{j_{i}}=\sum n_{i}q_{i} \overrightarrow{v_{i}}
$$


### Intensité du courant
Rappel: Flux d'un vecteur
<!-- basicblock-start oid="ObsY5eoU8nrV34tH2QaubLww" -->
Def. Flux d'un vecteur $\overrightarrow{v}$ sur une surface orientée $\overrightarrow{S}$::
$$
\varphi=\iint_{S}\overrightarrow{v}\cdot \overrightarrow{\mathrm{d}S}
$$
<!-- basicblock-end -->
Interprétation: Selon l'orientation de la surface, on compte plus où moins des charges qui traversent.
Par définition, l'intensité d'un courant électrique traversant une surface $S$ vaut:
<!-- basicblock-start oid="ObsDkwIGLCqBG8dmwjiuxtN1" -->
Def. Intensité électrique traversant une surface $\overrightarrow{S}$::
$$
i(t)=\iint_{S}\overrightarrow{j}\cdot \overrightarrow{\mathrm{d}S}
$$
<!-- basicblock-end -->

# II - Principe de conservation de la charge
## 1 - Cas unidimensionnel
Prenons une portion de conducteur en $x$ et $x+\mathrm{d}x$.
Voir Sch2
Alors, la variation de charge dans ce volume pendant $\mathrm{d}t$.
Variation du stock: $Q(t+\mathrm{d}t)-Q(t)$.
$$
\mathrm{d}Q=Q(t+\mathrm{d}t)-Q(t)=\delta Q_{\text{entrant}}-\delta Q_{\text{sortant}}
$$
Or, $Q(t)=\rho(t)\mathrm{d}V$, $\rho$ uniforme car le volume est infinitésimal, avec $\mathrm{d}V=S\mathrm{d}x$.
$$
\mathrm{d}Q=(\rho(t+\mathrm{d}t)-\rho(t))S\mathrm{d}x
$$
On a: $\rho(t+\mathrm{d}t)=\rho(t)+\frac{ \partial \rho }{ \partial t }(t)\mathrm{d}t+o(\mathrm{d}t)$... SUPER IMPORTANT, A SAVOIR.
Donc:
$$
\mathrm{d}Q=\frac{ \partial \rho }{ \partial t }(t) \mathrm{d}tS\mathrm{d}x
$$
De plus:
$$
\delta Q_{\text{entrant}}=I_{\text{entrant}}\mathrm{d}t=j(x)S\mathrm{d}t
$$
et
$$
\delta Q_{\text{sortant}}=j(x+\mathrm{d}x)S\mathrm{d}t
$$
Donc, le flux:
$$
\delta Q_{\text{entrant}}-\delta Q_{\text{sortant}}=-\frac{ \partial j }{ \partial x } \mathrm{d}xS\mathrm{d}t
$$
Donc, au final:
$$
\frac{ \partial \rho }{ \partial t } \mathrm{d}tS\mathrm{d}x=-\frac{ \partial j }{ \partial x }\mathrm{d}xS\mathrm{d}t 
$$
$$
\implies \frac{ \partial \rho }{ \partial t } =-\frac{ \partial j }{ \partial x } 
$$
<!-- basicblock-start oid="ObsnIvr6UAnfsaiSOctrYc93" -->
Demo. Equation de conservation de la charge en unidimensionnel::
$$
\frac{ \partial \rho }{ \partial t }=-\frac{ \partial j }{ \partial x }  
$$
<!-- basicblock-end -->

## 2 - Divergence d'un champ de vecteurs
Prenons un cube infinitésimal.
Joli schem
Je veux calculer le flux sortant d'un vecteur $\overrightarrow{A}$ à travers toutes les faces

$$
\implies \mathrm{d}\varphi=\left( \frac{ \partial A_{x} }{ \partial x }  +\frac{ \partial A_{y} }{ \partial y } +\frac{ \partial A_{z} }{ \partial z } \right)\mathrm{d}x\mathrm{d}y\mathrm{d}z
$$
$$
\mathrm{d}\varphi=(\mathrm{div} \overrightarrow{A})\mathrm{d}V
$$
La divergence décrit la quantité sortante.
## 3 - Généralisation
<!-- basicblock-start oid="ObsurMtr2g5J8KTfrfw1MI8D" -->
Def. ::
$$
\frac{ \partial \rho }{ \partial t } =-\mathrm{div}\overrightarrow{j}
$$
<!-- basicblock-end -->
En stationnaire $\frac{ \partial \rho }{ \partial t }=0\implies \mathrm{div}\overrightarrow{j}=0$
C'est la loi des nœuds.
$$
\begin{flalign*}
\text{Flux sortant de }\overrightarrow{j}&=0&&\cr
\text{Flux sortant de }\overrightarrow{j}-\text{Flux entrant de }\overrightarrow{j}&=0&&\cr
I_{\text{sortant}}-I_{\text{entrant}}&=0&&\cr
\end{flalign*}
$$


# III - Conduction électrique dans un conducteur chimique
# 1 - Loi d'Ohm locale
**Conductivité électrique**:
On admet que les interactions entre les électrons et les atomes d'un conducteur se modélisent par une force de Drude:
$$
\overrightarrow{F}=-\frac{m_{e}}{\tau}\overrightarrow{v}
$$
- Loi de frottement fluide
- $m_{e}$ est la masse de l'électron
- $\tau$ est le temps de relaxation du cristal
Un electron dans un conducteur subit $2^{quelque chose}$ loi de Newton:
$$
m_{e}\frac{\mathrm{d} \overrightarrow{v}}{\mathrm{d}t} = -\frac{m_{e}}{\tau}\overrightarrow{v}-e \overrightarrow{E}
$$
RSF:
$$
j\omega m_{e} \overrightarrow{v}+\frac{m_{e}}{\tau} \overrightarrow{v} = -e \overrightarrow{E}
$$
$$
\overrightarrow{v}=-\frac{e \tau}{m_{e}}\frac{\overrightarrow{E}}{1+j\omega \tau}
$$
or: $\overrightarrow{j}=-en \overrightarrow{v}$
donc: $\overrightarrow{j}=\frac{ne^{2}\tau}{m_{e}}\cdot \frac{\overrightarrow{E}}{1+j\omega \tau}$

on définit la conductivité complexe:
$$
\sigma (\omega)=\frac{\sigma_{0}}{1+j\omega \tau}
$$
avec $\sigma_{0}=\frac{ne^{2}\tau}{m_{e}}$ la conductivité statique.

Si $f<<10^{14}$Hz
<!-- basicblock-start oid="ObsSFTj3D4cHETXdsXKUlDrM" -->
Loi. D'Ohm locale::
$$
\overrightarrow{j}=\sigma_{0}\overrightarrow{E}
$$
<!-- basicblock-end -->

Prenons un conducteur cylindrique de longueur $L$ soumis à un champs $\overrightarrow{E}$ constant et uniforme.

$$
\begin{flalign*}
\overrightarrow{E}&=-\overrightarrow{ \mathrm{grad}}V&&\cr
&=-\frac{\mathrm{d}V}{\mathrm{d}x}\overrightarrow{e_{x}}&&\cr
&=-\frac{V(L)-V(0)}{L}\overrightarrow{e_{x}}&&\cr
&=&&\cr
\end{flalign*}
$$


## 2 - Loi de Joule locale
Dans un volume $\mathrm{d}V$ de conducteur il y a $n\mathrm{d}V$ électrons. Calculons la puissance de la force de Lorentz sur ce conducteur:
$$
dP_{\text{Lorentz}}=(\overrightarrow{F_{\text{Lorentz}}}\cdot \overrightarrow{v})(n\mathrm{d}V)
$$
Or: $\overrightarrow{F_{\text{Lorentz}}}\cdot \overrightarrow{v}=(-e(\overrightarrow{E}+\overrightarrow{v} \wedge \overrightarrow{B}))=-e \overrightarrow{E}\cdot \overrightarrow{v}$
Donc:
$$
dP_{\text{Lorentz}}=-e \overrightarrow{E}\cdot \overrightarrow{v}n\mathrm{d}V
$$
Or $\overrightarrow{j}=-en \overrightarrow{v}$.
$$
\implies dP_{\text{Lorentz}}=(\overrightarrow{j}\cdot \overrightarrow{E})\mathrm{d}V
$$
$$
P_{L}=\overrightarrow{j}\cdot \overrightarrow{E}
$$
correspond à la puissance volumique cédée du champs vers les charges libres.
donc au conducteur électrique qui les contient.
**Application au conducteur:**
$$
\begin{flalign*}
P_{\text{Lorentz}}&=(\overrightarrow{j}\cdot \overrightarrow{E})SL&&\cr
&=\frac{j^{2}}{\sigma_{0}}SL\text{ avec }\overrightarrow{j}=\sigma_{0}\overrightarrow{E}&&\cr
&=\left( \frac{I}{S} \right)^{2}\frac{SL}{\sigma_{0}}&&\cr
&=\frac{L}{S\sigma_{0}}I^{2}&&\cr
&=R_{\text{elec}}I^{2}&&\cr
\end{flalign*}
$$
La loi de Joule !!!


---












