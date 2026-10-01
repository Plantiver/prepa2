**Énoncé:**
On s'intéresse à une sphère chargée uniformément, de centre $O$, de rayon $R$, et de densité de charge $\rho_{0}$.
On place un point $M(r,\theta,\varphi)$, et l'on cherche l'expression de $\overrightarrow{E}(M,t)$ ainsi que de $V(M,t)$.


**Démo:**
1. Invariance et symétrie
- Toute translation de $t$ laisse $\overrightarrow{E}(M,t)$ inchangé
- Toute rotation de $\theta$ laisse $\overrightarrow{E}(M,t)$ inchangé
- Toute rotation de $\varphi$ laisse $\overrightarrow{E}(M,t)$ inchangé
Donc: $\overrightarrow{E}(M,t)=\overrightarrow{E}(r)$.
- Tout plan contenant $\overrightarrow{OM}$ est un plan de symétrie
- Ainsi, $\overrightarrow{E}\in(OM)$
Finalement: $\overrightarrow{E}(M,t)=E(r)\overrightarrow{e_{r}}.$


2. Choix de la surface de Gauss
On prend la sphère de centre $O$ et de rayon $r$.
Ainsi:
$$
\begin{flalign*}
\phi&=\oint \int_{S}\overrightarrow{E}\cdot \overrightarrow{\mathrm{d}S}&&\cr
&=\iint_{S}E(r)\mathrm{d}S&&\cr
&=E(r)\iint_{S}\mathrm{d}S&&\cr
&=E(r)4\pi r^{2}&&\cr
\end{flalign*}
$$

3. Application du théorème de Gauss
$$
\phi=\frac{Q_{\text{int}}}{\varepsilon_{0}}
$$
- Si $r<R$:
$$
\begin{flalign*}
Q_{\text{int}}&=\iiint_{V}\rho_{0}\mathrm{d}V&&\cr
&=\frac{4}{3}\pi r^{3}\rho_{0}&&\cr
\end{flalign*}
$$
D'où:
$$
\begin{flalign*}
E(r)4\pi r^{2}=&\frac{4}{3}\pi r^{3}\frac{\rho_{0}}{\varepsilon_{0}}&&\cr
\;\implies\;E(r)=&\frac{r\rho_{0}}{3\varepsilon_{0}}&&\cr
\end{flalign*}
$$

- Si $r>R$:
$$
\begin{flalign*}
Q_{\text{int}}&=\iiint_{V}\rho_{0}\mathrm{d}V&&\cr
&=\frac{4}{3}\pi R^{3}\rho_{0}&&\cr
&=Q_{\text{total}}&&\cr
\end{flalign*}
$$
D'où:
$$
\begin{flalign*}
E(r)4\pi r^{2}&=\frac{Q_{\text{total}}}{\varepsilon_{0}}&&\cr
\;\implies\;E(r)&=\frac{Q_{\text{total}}}{4\pi\varepsilon_{0}r^{2}}&&\cr
\end{flalign*}
$$
! On retrouve la même chose que pour une particule !
! Cela permet les approximations faites en première année !













