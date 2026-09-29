---
deck: phys
---

<!-- basicblock-start oid="Obsd5iNjtG0CqwBJ4FRRKp3v" -->
Loi. de Coulomb entre $M_{1}(q_{1})$ et $M_{2}(q_{2})$::
$$
\overrightarrow{F_{E,M_{1}\to M_{2}}}=\frac{q_{1}q_{2}}{4\pi\varepsilon_{0}||\overrightarrow{M_{1}M_{2}}||^{3}}\overrightarrow{M_{1}M_{2}}.
$$
<!-- basicblock-end -->
<!-- basicblock-start oid="ObsOyIxU0sBQNbgmJpzC4vMN" -->
Def. Champ électrostatique d'une particule $P(q_{1})$::
$$
\overrightarrow{E(M)}=\frac{q_{1}}{4\pi\varepsilon_{0}||\overrightarrow{PM}||^{3}}\overrightarrow{PM}.
$$
<!-- basicblock-end -->
<!-- basicblock-start oid="Obs7YnHeYRvyxpFK7u9wc9S8" -->
Prop. Principe de superposition du champs électrostatique::
$$
\overrightarrow{E}=\sum_{i}\overrightarrow{E_{i}}.
$$
<!-- basicblock-end -->
<!-- basicblock-start oid="Obs0KKbXhbTTw3goDk4gRrD6" -->
Def. Circulation d'un champ $\overrightarrow{a}$ le long de $\gamma$::
$$
\mathcal{C}_{\gamma}=\int_{\gamma}\overrightarrow{a}\cdot \overrightarrow{dl}.
$$
<!-- basicblock-end -->
<!-- basicblock-start oid="ObsvWhP7AfQI2KTT2nYxkXaP" -->
Prop. Propriété de la circulation::
$$
\begin{array}
\text{(i)}\;&\mathcal{C}_{\gamma}+\mathcal{C'}_{\gamma}=(\mathcal{C}+\mathcal{C}')_{\gamma}\cr
\text{(ii)}\;&\mathcal{C}_{-\gamma}=-\mathcal{C}_{\gamma}\cr
\text{(iii)}\;&\mathcal{C}_{\gamma_{1}+\gamma_{2} = \mathcal{C}_{\gamma_{1}}+\mathcal{C}_{\gamma_{2}}}
\end{array}
$$
<!-- basicblock-end -->
<!-- basicblock-start oid="ObsQs4dxCozdUidfFJoM87Ta" -->
Def. Opérateur nabla::
$$
\overrightarrow{\nabla}=\begin{pmatrix}
\frac{ \partial  }{ \partial x }  \cr
\frac{ \partial  }{ \partial y }  \cr
\frac{ \partial  }{ \partial z } 
\end{pmatrix}
$$
<!-- basicblock-end -->
<!-- basicblock-start oid="ObseS13l3QgyjzwoweoHEr4M" -->
Def. Opérateur gradient::
$$
\overrightarrow{grad}f=\overrightarrow{\nabla}f
$$
<!-- basicblock-end -->
<!-- basicblock-start oid="ObsyduipQ7uZ9NBPZbSHBHSf" -->
Def. Opérateur divergence::
$$
\mathrm{div}\overrightarrow{f}=\overrightarrow{\nabla}\cdot \overrightarrow{f}
$$
<!-- basicblock-end -->
<!-- basicblock-start oid="Obsj06n3JnMPAKM1896l9JgQ" -->
Def. Opérateur rotationnel::
$$
\overrightarrow{rot}\overrightarrow{f}=\overrightarrow{\nabla}\wedge \overrightarrow{f}
$$
<!-- basicblock-end -->
<!-- basicblock-start oid="Obs0iyoIFcLg06kzRL0Xn7N1" -->
Def. Potentielle électrostatique::
$$
V(r) = \frac{1}{4\pi\varepsilon_{0}}\frac{q}{r}+K
$$
<!-- basicblock-end -->
<!-- basicblock-start oid="ObsaXVHOwOvTmq4cwVJ0nv4M" -->
Rel. Champ et potentielle électrostatique::
$$
\overrightarrow{E}=-\overrightarrow{grad}V
$$
<!-- basicblock-end -->
<!-- basicblock-start oid="Obsxmc3Wohngf4etARBkL3SN" -->
Prop. Circulation conservative du champ électrostatique::
$$
\oint_{\gamma}\overrightarrow{E}\cdot \overrightarrow{dl}=0
$$
<!-- basicblock-end -->
<!-- basicblock-start oid="Obs0SWEnJ3SOowUzU31DK5yQ" -->
Def. La différentielle::
$$
df=(\overrightarrow{\mathrm{grad}}f)\cdot \overrightarrow{dl}=\frac{ \partial y }{ \partial x }\mathrm{d}x+\frac{ \partial f }{ \partial y }\mathrm{d}y+\frac{ \partial f }{ \partial z }\mathrm{d}z  
$$
<!-- basicblock-end -->
<!-- basicblock-start oid="ObsFqP8mxQ351ofJFjyzU8Tn" -->
Prop. Dév Limité de $f$ en $M$ proche de $O$::
$$
f(M)\simeq f(O)+\overrightarrow{OM}\cdot (\overrightarrow{\mathrm{grad}}f)(O)
$$
<!-- basicblock-end -->
<!-- basicblock-start oid="ObsuDNGXnvGGTKyyE1ex9eiD" -->
Prop. Gradient en cylindrique::
$$
\overrightarrow{ \mathrm{grad}}f=\frac{ \partial f }{ \partial r } \overrightarrow{e_{r}}+\frac{1}{r}\frac{ \partial f }{ \partial \theta } \overrightarrow{u_{\theta}}+\frac{ \partial f }{ \partial z } \overrightarrow{u_z}
$$
<!-- basicblock-end -->
<!-- basicblock-start oid="Obss510Q4Bp7TUqBWasKP7b4" -->
Def. Energie potentielle électrostatique::
$$
\mathcal{E}_{p}=qV
$$
<!-- basicblock-end -->
<!-- basicblock-start oid="ObsTOFeFdXZOJxm7GD0JcOGM" -->
Def. Tension électrique entre $A$ et $B$::
$$
U_{AB}=\mathcal{C}_{\gamma_{AB}}
$$
<!-- basicblock-end -->
<!-- basicblock-start oid="ObsyJd2hB2Ymn4AZETIQFpvr" -->
Def. Energie potentielle à partir de la force::
$$
\overrightarrow{F}=-\overrightarrow{ \mathrm{grad}}\mathcal{E}_{p}
$$
<!-- basicblock-end -->
<!-- basicblock-start oid="ObsyMSWtLbrkYpgHbA1QB6AY" -->
Prop. Circulation d'un fonction $f$ différentiable::
$$
\oint \overrightarrow{ \mathrm{grad}}f\cdot \overrightarrow{dl}=0
$$
<!-- basicblock-end -->
<!-- basicblock-start oid="ObsxvMskrO6UHuMJKHWHWiuc" -->
Def. Travail élémentaire d'une force::
$$
\delta W=\overrightarrow{F}\cdot \overrightarrow{\mathrm{d}l}
$$
<!-- basicblock-end -->
<!-- basicblock-start oid="ObsAzbMFuwmp6Yu49aZyNN9F" -->
Def. Travail d'une force::
$$
W_{\gamma_{A\to B}}=\int_{\gamma_{A\to B}}\delta W
$$
<!-- basicblock-end -->
<!-- basicblock-start oid="ObscP7wigxlAyU2LDEMHhl6q" -->
Prop. Travail élémentaire d'une force conservative::
$$
\delta W=-\mathrm{d}\mathcal{E}_p
$$
<!-- basicblock-end -->

$$
W_{\infty \to M}=\int_{+\infty}^{M} \delta W =-\int_{+\infty}^{M}\mathrm{d}\mathcal{E}_p=-\mathcal{E}_p(M)=-qV(M)=-\frac{qq_{0}}{4\pi\varepsilon_{0}r}
$$
Si $r\to_{0}$, l'energie diverge:
- $qq_{0}<0\implies \mathcal{E}_p\to-\infty$
- $qq_{0}>0\implies \mathcal{E}_p\to+ \infty$
Pour $N$ particules
<!-- basicblock-start oid="ObsafzwmncVRlSjiobMBkADy" -->
Prop. Energie potentielle de N particules::
$$
\mathcal{E}_p=\frac{1}{2}\sum_{i\not=j}\mathcal{E}_{p,i,j}
$$
<!-- basicblock-end -->
<!-- basicblock-start oid="ObstqCY6UlWt8rwMQNuQ7odG" -->
Def. Les lignes de champs::
En tout point, $\overrightarrow{E}$ est tangent aux lignes de champ.
<!-- basicblock-end -->

---

<!-- basicblock-start oid="Obs1a89F2kL90pQxMzRt4Uv1" -->
Def. Tube de champ::
- Ensemble des lignes de champ s'appuyant sur un contour fermé $\mathcal{C}$.
<!-- basicblock-end -->

<!-- basicblock-start oid="Obs2b90G3kM01pQxMzRt5Uv2" -->
Def. Surface équipotentielle::
- Ensemble des points de l'espace où le potentiel électrostatique $V$ est constant ($V = \mathrm{Cte}$).
<!-- basicblock-end -->

<!-- basicblock-start oid="Obs3c01H4kN12pQxMzRt6Uv3" -->
Prop. Orthogonalité des équipotentielles et lignes de champ::
- Les surfaces équipotentielles $V = \mathrm{Cte}$ sont en tout point orthogonales aux lignes de champ électrostatique.
<!-- basicblock-end -->

<!-- basicblock-start oid="Obs4d12I5kO23pQxMzRt7Uv4" -->
Prop. Sens du champ électrostatique par rapport au potentiel::
- Le champ $\vec{E}$ est dirigé vers les zones de potentiels décroissants (sens de la diminution la plus rapide de $V$).
<!-- basicblock-end -->

<!-- basicblock-start oid="Obs5e23J6kP34pQxMzRt8Uv5" -->
Def. Dipôle électrostatique et moment dipolaire::
$$
\text{Système de } -q \text{ en } N \text{ et } +q \text{ en } P \implies \vec{p} = q\vec{NP}
$$
<!-- basicblock-end -->

<!-- basicblock-start oid="Obs6f34K7kQ45pQxMzRt9Uv6" -->
Def. Approximation dipolaire::
$$
a = NP \ll r \quad (r = OM \text{ distance au centre } O \text{ du dipôle})
$$
<!-- basicblock-end -->

<!-- basicblock-start oid="Obs7g45L8kR56pQxMzRt0Uv7" -->
Prop. Écrantage des charges à grande distance::
- À grande distance d'un système électriquement neutre, les champs des charges opposées se compensent et le champ résultant est nul au premier ordre.
<!-- basicblock-end -->

<!-- basicblock-start oid="Obs8h56M9kS67pQxMzRt1Uv8" -->
Form. Potentiel d'un dipôle en approximation dipolaire (forme scalaire)::
$$
V(M) = \frac{1}{4\pi\varepsilon_{0}}\frac{p\cos\theta}{r^{2}}
$$
<!-- basicblock-end -->

<!-- basicblock-start oid="Obs9i67N0kT78pQxMzRt2Uv9" -->
Form. Potentiel d'un dipôle en approximation dipolaire (forme vectorielle)::
$$
V(M) = \frac{1}{4\pi\varepsilon_{0}}\frac{\vec{p}\cdot\vec{e}_{r}}{r^{2}}
$$
<!-- basicblock-end -->

<!-- basicblock-start oid="Obs0j78O1kU89pQxMzRt3Uv0" -->
Form. Composante radiale $E_r$ du champ d'un dipôle::
$$
E_{r} = -\frac{\partial V}{\partial r} = \frac{1}{2\pi\varepsilon_{0}}\frac{p\cos\theta}{r^{3}}
$$
<!-- basicblock-end -->

<!-- basicblock-start oid="Obs1k89P2kV90pQxMzRt4Uv1" -->
Form. Composante orthoradiale $E_\theta$ du champ d'un dipôle::
$$
E_{\theta} = -\frac{1}{r}\frac{\partial V}{\partial\theta} = \frac{1}{4\pi\varepsilon_{0}}\frac{p\sin\theta}{r^{3}}
$$
<!-- basicblock-end -->

<!-- basicblock-start oid="Obs2l90Q3kW01pQxMzRt5Uv2" -->
Form. Champ électrostatique d'un dipôle (expression vectorielle intrinsèque)::
$$
\vec{E}(M) = \frac{1}{4\pi\varepsilon_{0}r^{3}}\left(3(\vec{p}\cdot\vec{e}_{r})\vec{e}_{r} - \vec{p}\right)
$$
<!-- basicblock-end -->

<!-- basicblock-start oid="Obs3m01R4kX12pQxMzRt6Uv3" -->
Prop. Force résultante sur un dipôle dans un champ uniforme $\vec{E}_0$::
$$
\vec{F} = +q\vec{E}_{0} - q\vec{E}_{0} = \vec{0}
$$
<!-- basicblock-end -->

<!-- basicblock-start oid="Obs4n12S5kY23pQxMzRt7Uv4" -->
Form. Moment du couple sur un dipôle dans un champ uniforme $\vec{E}_0$::
$$
\vec{\Gamma}_{O} = \vec{p}\wedge\vec{E}_{0}
$$
<!-- basicblock-end -->

<!-- basicblock-start oid="Obs5o23T6kZ34pQxMzRt8Uv5" -->
Form. Énergie potentielle d'un dipôle dans un champ uniforme $\vec{E}_0$::
$$
\mathcal{E}_{p} = -\vec{p}\cdot\vec{E}_{0}
$$
<!-- basicblock-end -->

<!-- basicblock-start oid="Obs6p34U7kA45pQxMzRt9Uv6" -->
Prop. Positions d'équilibre d'un dipôle dans un champ uniforme::
- Équilibre stable : $\vec{p}$ et $\vec{E}_0$ parallèles et de même sens ($\mathcal{E}_p$ minimale).
- Équilibre instable : $\vec{p}$ et $\vec{E}_0$ antiparallèles ($\mathcal{E}_p$ maximale).
<!-- basicblock-end -->

<!-- basicblock-start oid="Obs7q45V8kB56pQxMzRt0Uv7" -->
Form. Moment du couple sur un dipôle dans un champ non uniforme $\vec{E}$::
$$
\vec{\Gamma}_{O} = \vec{p}\wedge\vec{E}_{O} \quad (\vec{E}_{O} \text{ champ au centre } O \text{ du dipôle})
$$
<!-- basicblock-end -->

<!-- basicblock-start oid="Obs8r56W9kC67pQxMzRt1Uv8" -->
Form. Énergie potentielle d'un dipôle dans un champ non uniforme $\vec{E}$::
$$
\mathcal{E}_{p} = -\vec{p}\cdot\vec{E}_{O} \quad (\vec{E}_{O} \text{ champ au centre } O \text{ du dipôle})
$$
<!-- basicblock-end -->

<!-- basicblock-start oid="Obs9s67X0kD78pQxMzRt2Uv9" -->
Form. Force subie par un dipôle dans un champ non uniforme $\vec{E}$::
$$
\vec{F} = -\vec{\mathrm{grad}}\mathcal{E}_{p} = \vec{\mathrm{grad}}(\vec{p}\cdot\vec{E}_{O})
$$
<!-- basicblock-end -->

<!-- basicblock-start oid="Obs0t78Y1kE89pQxMzRt3Uv0" -->
Prop. Effet d'un champ non uniforme sur un dipôle::
- Oriente le dipôle le long des lignes de champ de $\vec{E}_{O}$.
- Déplace le dipôle vers les zones de champ fort.
<!-- basicblock-end -->

---

<!-- basicblock-start oid="Obs0u89Z2kF90pQxMzRt4Uv1" -->
Prop. Moment dipolaire d'une liaison covalente entre $N$ et $P$ ($\chi(N)>\chi(P)$)::
$$
\vec{\mu} = \delta e \vec{NP}
$$
<!-- basicblock-end -->

<!-- basicblock-start oid="Obs1v90A3kG01pQxMzRt5Uv2" -->
Def. Conversion de l'unité du Debye (D)::
$$
1\text{ D} = 3{,}33 \times 10^{-30}\text{ C}\cdot\text{m}
$$
<!-- basicblock-end -->

<!-- basicblock-start oid="Obs2w01B4kH12pQxMzRt6Uv3" -->
Def. Moment dipolaire total d'une molécule::
$$
\vec{\mu} = \sum_{i}\vec{\mu}_{i}
$$
<!-- basicblock-end -->

<!-- basicblock-start oid="Obs3x12C5kI23pQxMzRt7Uv4" -->
Def. Molécule polaire et apolaire::
- Molécule polaire : $\vec{\mu} \neq \vec{0}$
- Molécule apolaire : $\vec{\mu} = \vec{0}$
<!-- basicblock-end -->

<!-- basicblock-start oid="Obs4y23D6kJ34pQxMzRt8Uv5" -->
Prop. Géométrie d'équilibre d'une molécule::
- La géométrie d'une molécule est celle qui minimise son énergie potentielle électrostatique totale.
<!-- basicblock-end -->

<!-- basicblock-start oid="Obs5z34E7kK45pQxMzRt9Uv6" -->
Prop. Concept d'action locale du champ électrostatique::
- Substitue à la notion d'action à distance entre charges la notion d'action locale exercée par le champ $\vec{E}$ au point où se situe la charge subissant la force.
<!-- basicblock-end -->




