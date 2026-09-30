---
deck: phys
---

# I - Les signaux préiodique et le régime forcé
## 1 - Définitions
- SIgnal périodique: $\exists T, \forall t, s(t) = s(t+T)$
- Période: $T$ minimal qui vérifie la propriété
- Fréquence: $f = 1/T$, où $f$ est en $Hz$
- Pulsation: $\omega = 2\pi f$, où $\omega$ est en $rad\cdot s^{-1}$
- Valeur moyenne: $<s> = \frac{1}{T}\cdot\int_{t_0}^{t_0+T}s(t)\,dt$
- Valeur efficace: $S_{eff} = \sqrt{<s²>}$  -->  valeur mesurée par un voltmètre en régime variable
- L'energie portée par un signal est proportionnel au carré de celui-ci ($S_{eff}^2$)

### Remarques
- $<cos(\omega t)> = <sin(\omega t)> = 0$
- $<sin^2(\omega t)> = 1/2$


## 2 - La notation complexe
En élec, on note $j$ tq: $$j^2 = -1$$
ou:$$j=e^{j\pi/2}$$
Prenons $$u(t) = U\cos(\omega t+\phi)$$
Ainsi, on a:$$\underline{U(t)} = U e^{j\phi}e^{j\omega t}$$
<!-- basicblock-start oid="ObsDcOFKhTCsgwxYKWv33wMz" -->
Def. Notation complexe de $u(t)$::
$$
\underline{U(t)}=U_{0}e^{j\varphi}e^{j\omega t}
$$
<!-- basicblock-end -->
Donc: $$u(t) = Re(\underline{U(t)})$$
Amplitude complexe:$$\underline U = Ue^{j\phi}$$ On a: $$U = |\underline U|\Phi = arg(\underline U)$$
### Interet pratique calculatoire
$$\frac{d}{dt}\underline{U(t)} = j\omega\underline{U(t)}$$
<!-- basicblock-start oid="Obs2cuqnNGSZUdz8s5BnfBa6" -->
Prop. Intérêt de la notation complexe de $u(t)$::
$$
\frac{d}{\mathrm{d}t}\underline{U(t)}=j\omega\underline{U(t)}
$$
<!-- basicblock-end -->
## 3 - Régime forcé en électronique et inpédence
Pour un circuit avec des dipoles linéaires (R,L,C), toute ces grandeurs vérifient une Equation Différentielle Linéaire à Coefficient Constant (EDLC) d'ordre 1,2,3...
$$s(t) = s_{Homogène}(t) + s_{particulière}(t)$$
Si le générateur qui force le circuit est sinusoïdal, la solution particulière est de forme sinusoïdale.
- Add Note 1
En vrai, pas besoin d'attendre l'infini, ça va vite!
On est en RSF quand $s(t) = s_{particulier}(t)$.
Pour étudier l'élec en RSF,
- soit on établit l'équa diff et on la passe en complexe (fastidieux mais à savoir faire)
- + rapide: on passe le circuit en complexe avec les impédence

- Add Note 2

Loi d'Ohm en RSF:$$\underline U = \underline Z \underline i$$
où $|\underline Z| est en Ohm.
- Résistance: $Z_R = R$
- Condensateur: $Z_L = 1/(jC\omega)$
- Bobine: $Z_L = jL\omega$

# II - Les sytèmes linéaires
# 1 - Introduction
On considère une réponse d'un système à une exitation.
- Add Note 3
## 2 - Système linéaires à invariance temporelle
Parce que c'est facile.
>La modélisation linéaire est TOUJOURS un cas limite dans une gamme d'utilisation

- Add note 4

Tous les systèmes vérifiant ces propirétés vérifient une EDLC: $$\sum_{i=0}^n a_i\frac{d^is}{dt^i}(t) = \sum_{k=0}^m b_k\frac{d^ke}{dt^k}(t) $$
## 3 - La fonction de transfert
En RSF, on cherche la S.P. de l'équa' diff' avec $e(t)$ sinusoïdale. On sait que, dans ce cas, $s(t)$ est sinusoïdale.
On passe en complexe:$$\sum_{i=0}^n a_i\frac{d^i\underline s}{dt^i}(t) = \sum_{k=0}^m b_k\frac{d^k\underline e}{dt^k}(t) $$
$$ \sum_{i=0}^na_i(j\omega)^i\underline{s(t)} = \sum_{k=0}^mb_k(j\omega)^k\underline{e(t)}$$
$$(\sum_{i=0}^na_i(j\omega)^i)\underline s = (\sum_{k=0}^mb_k(j\omega)^k)$$
$$\underline s = \frac{\sum_{k=0}^mb_k(j\omega)^k}{\sum_{i=0}^na_i(j\omega)^i}\cdot\underline e$$
Cette some est notée $\underline H$, la fonction de transfert.
Souvent, on prend la phase à l'origine nulle, de sorte que $\underline e = e_0\in R$
- Add note 5

# III - Application au filtrage linéaire
## 1 - Le théorème de Fourier
> Tout signale périodique de fréquence $f$ se décompose en Série de Fourier$$s(t) = C_0+\sum_{n=1}^{+\inf}c_ncos(2\pi nft+\phi_n)$$
> avec $C_0 = <s>$
> et $\mathrm{Set}( c_{n} )$ le spectre du signal.

## 2 - Utilisation de la fonction de transfert
Donc: $$e(t) = e_0 + \sum_{n=1}^{+\inf}e_ncos(2\pi nft + \phi_n)$$ $$ s(t) = |\underline{H(0)}|e_0 + \sum_{n=1}^{+\inf}e_n|\underline{H(w_n)}|\cdot cos(\omega_nt + arg(\underline{H(\omega_n)})) $$
avec $\omega_n = 2\pi nf$.

### Diagramme de Bode
1. Tracé de$$G_{dB} = 20log(\underline H)$$ en fonction de $\omega$ en échelle $log$.
2. Tracé de $$\phi = arg(\underline H)$$ en échelle $log$.
Pour tracer le Gain en décibel, on cherche les équivalents (ON SE FOUT DES LIMITES)
- BF: $\omega<<\omega_0$, ou $x<<1$
- Hf: $\omega>>\omega_0$, ou $x >> 1$.
On trace les asymptote, place la valeur pour $x=0$, et on relie tout.
La fonction coincide avec ses asymptotes sauf sur $[-1;1]$.
A savoir, $20log(\frac{1}{\sqrt 2}) ~= -3dB$.
La pulsation de coupure c'est $\omega_c, |\underline{H(\omega_c)}| = \frac{H_max}{\sqrt 2}$.

## 3 - Association de filtres
> Problème: les filtres en série ne se comporte pas comme l'enchainement des effets

-> Cela empèche de traiter l'électronique par blocs
Heureusement, il existe d'autres types de filtre, hors programme, qui ont:
- une forte impédence d'entrée
- une faible impédence de sortie










# Complément
## Comportement des filtres
- Si la pente est de +20dB/decade, alors le filtre a un comportement dérivateur
- Si la pente est de -20dB/decade, alors le filtre a un comportement intégrateur
## Formules des filtres
Passe Haut 1er ordre: $$ \underline H = \frac{jx}{1+jx} $$
Passe Bac 1er ordre: $$ \underline H = \frac{1}{1+jx} $$
# Fiche de filtres
<!-- basicblock-start oid="ObsbBANwN6cXxxUxkvt3AX6I" -->
Prop. Filtre R(C)::
- $H=\frac{1}{1+jx}$
- $\omega_{0}=\frac{1}{RC}$
- $\omega_{c}=\omega_{0}$
- Passe bas du premier ordre
<!-- basicblock-end -->
<!-- basicblock-start oid="ObscZMCzjTGdP5E0M7vLENuC" -->
Prop. Filtre R(L)::
- $H=\frac{jx}{1+jx}$
- $\omega_{0}=\frac{R}{L}$
- $\omega_{c}=\omega_{0}$
- Passe haut du premier ordre
<!-- basicblock-end -->
<!-- basicblock-start oid="ObsTIx7DPwYOwr3zqbfxkSHi" -->
Prop. Pulsation propre d'un filtre du second ordre::
$$
\omega_{0}=\frac{1}{\sqrt{ LC }}
$$
<!-- basicblock-end -->
<!-- basicblock-start oid="ObsqpvqKlXZ9RWhraFjilxa7" -->
Prop. Facteur de qualité d'un filtre du second ordre::
$$
Q=\frac{1}{R}\sqrt{ \frac{L}{C} }
$$
<!-- basicblock-end -->
<!-- basicblock-start oid="Obs9LCwTIk4WJPsrxsftHCgU" -->
Prop. Filtre RL(C)::
- $H=\frac{1}{1+\frac{jx}{Q}-x^{2}}$
- $\omega_{c}$
- Passe bas du second ordre
<!-- basicblock-end -->
<!-- basicblock-start oid="ObsBW2LZHkwTS02dmTMfLj9g" -->
Prop. Filtre RC(L)::
- $H=-\frac{x^{2}}{1+\frac{jx}{Q}-x^{2}}$
- $\omega_{c}$
- Passe Haut du second ordre
<!-- basicblock-end -->
<!-- basicblock-start oid="ObsUfJbeuSl5SZndRJMV3EY4" -->
Prop. Filtre LC(R)::
- $H=\frac{\frac{jx}{Q}}{1+\frac{jx}{Q}-x^{2}}$
- $\omega_{c}$
- Passe bande du second ordre
<!-- basicblock-end -->


---
<!-- basicblock-start oid="ObsYSbGvmxRPqi9HSd0dAeJa" -->
Def. Signal périodique $s(t)$::
$$
\exists T > 0, \quad \forall t \in \mathbb{R}, \quad s(t+T) = s(t)
$$
<!-- basicblock-end -->

<!-- basicblock-start oid="ObsgLH5hWHhtyMZVvgtbLH2w" -->
Def. Fréquence d'un signal::
$$
f = \frac{1}{T}
$$
<!-- basicblock-end -->
<!-- basicblock-start -->
Def. Pulsation d'un signal::
$$
\omega=2\pi f=\frac{2\pi}{T}
$$
<!-- basicblock-end -->

<!-- basicblock-start oid="ObseLvZUajhc3AOPwscKFymd" -->
Def. Valeur moyenne d'un signal::
$$
\langle s(t) \rangle = \frac{1}{T} \int_{t_0}^{t_0+T} s(t) \, \mathrm{d}t
$$
<!-- basicblock-end -->

<!-- basicblock-start oid="ObsLH74gv5MfXqPLbkF3k9ro" -->
Def. Valeur efficace d'un signal::
$$
s_{\mathrm{eff}} = \sqrt{\langle s^2(t) \rangle}
$$
<!-- basicblock-end -->

<!-- basicblock-start oid="Obshyum86iFLltwM6E2Hi4hI" -->
Prop. Valeur efficace d'un signal sinusoïdal::
$$
s_{\mathrm{eff}} = \frac{1}{\sqrt{2}}
$$
<!-- basicblock-end -->

<!-- basicblock-start oid="Obs389f4GvhjK09xLWqPn901" -->
Def. Notation complexe d'un signal::
$$
u(t)=u_{0}\cos(\omega t+\varphi) \implies\underline{U}(t) = u_{0} e^{j\omega t+j\varphi}
$$
<!-- basicblock-end -->

<!-- basicblock-start oid="ObsK92mP1qLxRt7wNvBCz382" -->
Prop. Dérivation temporelle du signal complexe::
$$
\frac{\mathrm{d}u}{\mathrm{d}t} = j\omega u
$$
<!-- basicblock-end -->

<!-- basicblock-start oid="ObsM74vL9pQqRz1wXtBYn603" -->
Def. Impédance d'un dipôle::
$$
\underline{Z} = \frac{u}{i}
$$
<!-- basicblock-end -->

<!-- basicblock-start oid="ObsP21xN8mKlQr5wZtCVb495" -->
Prop. Impédances des dipôles usuels::
- Résistance $R$ : $\underline{Z}_R = R$
- Inductance $L$ : $\underline{Z}_L = jL\omega$
- Capacité $C$ : $\underline{Z}_C = \frac{1}{jC\omega}$
<!-- basicblock-end -->

<!-- basicblock-start oid="ObsZ75cT4sN4Uw2wEtHBg540" -->
Th. Décomposition en série de Fourier::
$$
s(t) = c_0 + \sum_{n=1}^{+\infty} c_n \cos(2\pi n f t + \varphi_n)
$$
<!-- basicblock-end -->

<!-- basicblock-start oid="ObsC31eV0uQ6Wy4wGtJDi762" -->
Def. Gain $G(\omega)$ et Gain en décibels $G_{\mathrm{dB}}(\omega)$ d'un filtre::
$$
G(\omega) = |\underline{H}(\omega)| \quad \text{et} \quad G_{\mathrm{dB}}(\omega) = 20 \log G(\omega) = 20 \log |\underline{H}(\omega)|
$$
<!-- basicblock-end -->
<!-- basicblock-start -->
Def. Gain d'un filtre::
$$
G = |\underline{H}|
$$
<!-- basicblock-end -->
<!-- basicblock-start -->
Def. Gain en décibel d'un filtre::
$$
G_{dB}=20\log(G)
$$
<!-- basicblock-end -->

<!-- basicblock-start oid="ObsG97gX6wS8Ya6wItLFk984" -->
Def. Diagramme de Bode d'un filtre::
- Tracé du gain en décibels $G_{\mathrm{dB}}(\omega)$ en fonction de $\log(\omega)$
- Tracé de la phase $\varphi(\omega) = \arg(\underline{H}(\omega))$ en fonction de $\log(\omega)$
<!-- basicblock-end -->

<!-- basicblock-start oid="ObsI20hY9xT9Zb7wJtMGl095" -->
Def. Bande passante à $3\text{ dB}$ d'un filtre::
$$
\{\omega \mid G_{\mathrm{dB}}(\omega) \ge G_{\mathrm{dB},\max} - 3\text{ dB}\} \quad \iff \quad \left\{ \omega \mid G(\omega) \ge \frac{H_{\max}}{\sqrt{2}} \right\}
$$
<!-- basicblock-end -->

<!-- basicblock-start oid="ObsK53iZ2yU0Ac8wKtNHm106" -->
Prop. Condition d'association en cascade de deux filtres::
$$
|\underline{Z}_{e,2}| \gg |\underline{Z}_{s,1}| \implies \underline{H}_{\mathrm{total}} = \underline{H}_1 \cdot \underline{H}_2
$$
<!-- basicblock-end -->

---

<!-- basicblock-start oid="ObsM98kP1qLxRt7wNvBCz381" -->
Th. de Millman (hp)::
$$
\underline{U} = \frac{\sum_{k=1}^{N} \frac{\underline{V}_k}{\underline{Z}_k}}{\sum_{k=1}^{N} \frac{1}{\underline{Z}_k}}
$$
<!-- basicblock-end -->




