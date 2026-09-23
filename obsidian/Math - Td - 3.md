---
noteId: 1789748649437
---

16, 35, 40, 41, 59

$$
\begin{flalign*}
\text{Exo 16}&&&\cr
\text{a) }&\text{Soit }M=\begin{pmatrix}
a  & b \cr
c  & d 
\end{pmatrix}\in \mathrm{Ker}f\text{, i.e. }&&\cr
&\begin{cases}
a+2c=0 \cr
b+2d=0 \cr
2a+4c=0 \cr
2b+4d=0
\end{cases}&&\cr
\iff&\begin{cases}
a=-2c \cr
b=-2d
\end{cases}&&\cr
\iff&M=\begin{pmatrix}
-2c & -2d \cr
c  & d 
\end{pmatrix}&&\cr
\iff&\mathrm{Ker}f=\mathrm{Vect}(\begin{pmatrix}
-2&0 \cr
1&0
\end{pmatrix}, \begin{pmatrix}
0&-2 \cr
0&1
\end{pmatrix})&&\cr
\text{b) }&\text{Non, }\mathrm{Ker}f\not=\mathrm{Set}( 0 )\text{, et pourtant... dim arg}&&\cr
\text{c) }&\text{Base de }\mathrm{Ker}f\text{, OK}&&\cr
&\text{Base de }\mathrm{Im}f\text{: on sait que}&&\cr
&\mathrm{dim}\;\mathrm{Im}f = 2&&\cr
\implies&\begin{cases}
u=A\times \begin{pmatrix}
1&0 \cr
0&0
\end{pmatrix}=\begin{pmatrix}
1&0 \cr
2&0
\end{pmatrix}\in\mathrm{Im}f \cr
v=A\times \begin{pmatrix}
0&1 \cr
0&0
\end{pmatrix}=\begin{pmatrix}
0&1 \cr
0&2
\end{pmatrix}\in\mathrm{Im}f
\end{cases}\text{ sont linéairement indépendant, donc une base de }\mathrm{Im}f&&\cr
\implies&\mathrm{Im}f=\mathrm{Vect}(u,v)&&\cr
\end{flalign*}
$$
$$
\begin{flalign*}
\text{Exo 35}&&&\cr
\text{a) }&p_{1}p_{2}\circ p_{1}p_{2}=p_{1}^{2}p_{2}^{2}=p_{1}p_{2} \implies p_{1}p_{2}\text{ est un projecteur}&&\cr
&(p_{1}+p_{2}-p_{1}p_{2})^{2}=p_{1}^{2}+p_{1}p_{2}-p_{1}^{2}p_{2}+p_{2}p_{1}+p_{2}^{2}-p_{2}^{2}p_{1}-p_{1}^{2}p_{2}-p_{2}^{2}p_{1}+p_{1}^{2}p_{2}^{2}=p_{1}+p_{2}-p_{1}p_{2}&&\cr
\implies&q\text{ est un projecteur}&&\cr
\text{b) }&\text{Il est évident que }\mathrm{Ker}p_{1}\cap\mathrm{Ker}p_{2}\subset\mathrm{Ker}q&&\cr
&\text{Soit }x \in\mathrm{Ker}q\setminus\mathrm{Ker}p_{1}\cap\mathrm{Ker}p_{2}&&\cr
\implies&q(x)=0\text{ et }p_{1}(x)\not=0 \text{ ou }p_{2}(x)\not=0&&\cr
\implies&q(x)\not=0;\boxed{\text{Absurde !}}&&\cr
\implies&\boxed{\mathrm{Ker}q\subset\mathrm{Ker}p_{1}\cap\mathrm{Ker}p_{2}}&&\cr
\text{c) }&\text{Trivialement: }\underline{\mathrm{Im}q\subset\mathrm{Im}p_{1}+\mathrm{Im}p_{2}}&&\cr
&\text{Soit }x=p_{1}(i)+p_{2}(j)\in\mathrm{Im}p_{1}+\mathrm{Im}p_{2}&&\cr
\underset{q}{\implies}&q(x)=p_{1}(i)+p_{2}(j)+p_{1}p_{2}(i+j)-p_{1}p_{2}(i+j)&&\cr
\implies&q(x)=x&&\cr
\implies&x \in\mathrm{Im}q&&\cr
\end{flalign*}
$$

$$
\begin{flalign*}
\text{Exo 40}&&&\cr
\text{a) }&\text{Trivialement: }\underline{\text{Par propriété du rang et par le TBA}}&&\cr
\text{b) }&X\in F\subset\mathrm{Ker}ABC&&\cr
\implies&ABCX=0&&\cr
\implies&CX\in\mathrm{Ker}AB&&\cr
\text{c) }&\text{Trivialement: }\underline{\varphi\text{ est linéaire car associée à la matrice }C}&&\cr
&\text{Soit }X\in\mathrm{Ker}\varphi &&\cr
\implies&CX=0&&\cr
\implies&ABCX=0 \text{ et }BCX=0&&\cr
\implies&X\in \mathrm{Ker}ABC \text{ et }X\in\mathrm{Ker}BC&&\cr
\underset{\text{suplé}}{\implies}&X=0&&\cr
\underset{\text{TdN}}{\implies}&\boxed{\varphi\text{ est injective}}&&\cr
\text{d) }&\text{Soit }b:\mathrm{Ker}AB\to\mathrm{Ker}A\text{ l'application associée à B}&&\cr
&\text{On veut montrer que }\mathrm{Ker}AB=\mathrm{Ker}b\oplus \mathrm{Im}\varphi &&\cr
&\text{Soit }X\in\mathrm{Ker}b\cap \mathrm{Im}\varphi &&\cr
\implies&X=0\implies&&\cr
\end{flalign*}
$$
$$
\begin{flalign*}
\text{Exo 41}&&&\cr
&\text{Si }M\in A\text{ est inversible, alors}&&\cr
\implies&\exists \mu=\sum_{k=0}^{N}a_{k}X^{k} \in \mathbb{K}[X],\;\mu (M)=0\text{ et }\mu (0)=a_{0}w &&\cr
\implies&Id_{n}=-\frac{1}{a_{0}}M\sum_{i=1}^{N}a_{i}M^{i-1}&&\cr
\implies&M^{-1}=-\frac{1}{a_{0}}\sum_{i=1}^{N}a_{i}M^{i-1}\in \mathbb{K}[M]\subset A&&\cr
\end{flalign*}
$$
$$
\begin{flalign*}
\text{Exo 59}&&&\cr
\text{a) }&\text{Trivialement: }\underline{E\text{ est un sev de }\mathbb{C}^{\mathbb{N}}\text{ de dimension }2}&&\cr
\text{b) }&\text{Soient }r_{1},r_{2}\text{ racine de }p:z\to z^{2}+2az+4(ia-1)&&\cr
&\Delta=4(a^{2}-4ia-4)=4(a-2i)^{2}&&\cr
\implies&r_{1},r_{2}=a\pm(a-2i)=\mathrm{Set}( 2i,2(a-i) )&&\cr
\implies&\begin{cases}
\lambda_{1}+\lambda_{2}=1 \cr
\lambda_{1}\cdot 2i+2(a-i)\lambda_{2}=1
\end{cases}&&\cr
\implies&\begin{cases}
\lambda_{1}=1-\lambda_{2} \cr
2(a-2i)\lambda_{2}=1-2i\underset{a\not=2i}{\implies}\lambda_{2}=\frac{1-2i}{2a-4i}
\end{cases}&&\cr
\implies&u_{n}=\lambda_{1}r_{1}^{n}+\lambda_{2}r_{2}^{n}&&\cr
\end{flalign*}
$$
$$
\begin{flalign*}
\text{Exo 57}&&&\cr
\text{a) }&E=\mathrm{Im}f\oplus \mathrm{Ker}f&&\cr
&\text{Trivialement: }\underline{\mathrm{Im}f^{2}\subset\mathrm{Im}f}&&\cr
&\text{Soit }x \in \mathrm{Im}&&\cr
\implies&x=f(u),\;u\in E&&\cr
&\text{Or, }u=f(i)+j,\;(i,j)\in E\times\mathrm{Ker}f&&\cr
\implies&x=f(f(i)+j)=f^{2}(i)\in \mathrm{Im}f^{2}&&\cr
\text{b) }&\text{Si }\mathrm{Im}f=\mathrm{Im}f^{2}&&\cr
\implies&\text{Trivialement: }\underline{\mathrm{Ker}f\subset\mathrm{Ker}f^{2}}\text{ et, par le TBA }\mathrm{dim}\mathrm{Ker}f=\mathrm{dim}\mathrm{Ker}f^{2}&&\cr
\implies&\mathrm{Ker}f=\mathrm{Ker}f^{2}&&\cr
&\text{Réciproquement, si }\mathrm{Ker}f=\mathrm{Ker}f^{2}&&\cr
\implies&\text{de même}\dots &&\cr
\text{c) }&\text{Si }\mathrm{Im}f=\mathrm{Im}f^{2}&&\cr
&\text{TDR: }\mathrm{dim}E=\mathrm{dim}\mathrm{Ker}f+\mathrm{dim}\mathrm{Im}f&&\cr
&\mathrm{Ker}f\cap\mathrm{Im}f=\mathrm{Set}( 0 )\text{ ?}&&\cr
&&&
\end{flalign*}
$$




