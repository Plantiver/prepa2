**Énoncé:**
Soit $L$ un langage régulier, alors:
$$
\begin{flalign*}
\exists N\in \mathbb{N},\;&\forall u\in L,\;|u|\geq N,\;\exists (x,y,z)\in\Sigma^{\star},\;u=xyz \text{ et }&&\cr
&\begin{cases}
y\not=\varepsilon \cr
|xy|<N \cr
\mathscr{L}(xy^{\star}z)\subset L
\end{cases}&&\cr
\end{flalign*}
$$
**Démo:**
Soit $\mathscr{A}=(Q,\Sigma,I,F,\delta)$ un automate fini, tel que $\mathscr{L}(\mathscr{A})=L$.
Prenons $N=|Q|+1$, avec $|Q|$ le nombre d'état de cet automate.
Si $u$ est un mot de $L$ de longueur $p=|u|\geq N$, alors notons $(q_{i})_{i\in[1,p]}$ les états de $Q$ par lesquelles $\mathscr{A}$ lit $u$.
Ainsi, 
$$
\exists(i,j)\in[1,p]^{2},\;i<j,\;q_{i}=q_{j}.
$$
On peut donc *choisir* de prendre, pour $j$ minimal avec cette propriété:
$$
q_{1}\underset{ x }{ \to^{\star} }q_{i}\underset{ y }{ \to^{\star} }q_{j}\underset{ z }{ \to^{\star} }q_{p}.
$$
Avec ce choix, on obtient les 3 propriétés voulus:
- $i<j\;\implies\;y\not=\varepsilon$
- $j$ minimal $\;\implies\;|xy|<N$
- $q_{i}=q_{j}\;\implies\;\mathscr{L}(xy^{\star}z)\subset L$.